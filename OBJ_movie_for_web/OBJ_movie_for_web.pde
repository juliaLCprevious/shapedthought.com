/*@pjs preload= "vex-sequence3.mov"; */
/*@pjs preload= "Vextapeulous.obj";*/

import codeanticode.gsvideo.*;
import saito.objloader.*;
import processing.opengl.*;
import codeanticode.glgraphics.*;


float rotX, rotY;

OBJModel model1;
Material material;
GLModel glmodel;
GLTexture tex;

GSMovie movie;


void setup() {
  size(900, 900, GLConstants.GLGRAPHICS);

  movie = new GSMovie(this, "vex-sequence3.mov");
  movie.loop();

  model1 = new OBJModel(this, "Vextapeulous.obj", "relative", TRIANGLES);
  glmodel = new GLModel(this, model1.getFaceCount()*3, TRIANGLES, GLModel.DYNAMIC);
  tex = new GLTexture(this);

  model1.scale(80);
  model1.translateToCenter();

  updateModel(model1, glmodel, tex);

  tex.putPixelsIntoTexture(movie);
}


void movieEvent(GSMovie movie) {
  movie.read();
}


void draw() {

  translate(width/2, height/2); 
 
  background(0);
  lights();
  rotateY(rotX);
  rotateX(rotY);

  GLGraphics renderer = (GLGraphics)g;
  renderer.beginGL();

  tex.putPixelsIntoTexture(movie);


  renderer.model(glmodel);
  renderer.endGL();
}



void mouseDragged()
{
  if (keyPressed == false) {
      noCursor();
    rotX += (mouseX - pmouseX) * 0.01;
    rotY -= (mouseY - pmouseY) * 0.01;
  }
}


void updateModel(OBJModel m, GLModel gm, GLTexture tm) {


  //-------- UPDATE VERTICES -----------

  gm.beginUpdateVertices();
  int j=0;
  for ( int f =0; f<m.getFaceCount();f++) {
    PVector[]fverts = m.getFaceVertices(f);
    for ( int v=0; v<fverts.length; v++) {
      gm.updateVertex(j++, fverts[v].x, fverts[v].y, fverts[v].z);
    }
  }
  gm.endUpdateVertices();


  // ------------ UPDATE NORMALS ----------------

  gm.initNormals();
  gm.beginUpdateNormals();
  int index = 0;
  for (int s=0; s<m.getSegmentCount(); s++) {
    Segment segment = m.getSegment(s);
    Face[]faces = segment.getFaces();

    for (int nn=0; nn<faces.length; nn++) {
      PVector[]vs = faces[nn].getVertices();
      PVector[]ns = faces[nn].getNormals();

      for (int k=0; k<vs.length; k++) {
        gm.updateNormal(index++, ns[k].x, ns[k].y, ns[k].z);
      }
    }
  }
  gm.endUpdateNormals();



  // ------------- UPDATE UV'S--------------------

  gm.initTextures(1);
  gm.setTexture(0, tm);

  gm.beginUpdateTexCoords(0);
  index =0;
  for (int f=0; f<m.getSegmentCount(); f++) {
    Segment segment = m.getSegment(f);
    Face[]faces = segment.getFaces();

    for (int u=0; u<faces.length; u++) {
      PVector[]vs = faces[u].getVertices();
      PVector[]ns = faces[u].getUvs();

      for (int k=0; k<vs.length; k++) {
        gm.updateTexCoord(index++, ns[k].x, ns[k].y);
      }
    }
  }
  gm.endUpdateTexCoords();
}

