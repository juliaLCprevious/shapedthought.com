import codeanticode.glgraphics.*;

import saito.objloader.*;

import processing.opengl.*;



OBJModel model;


float rotX;
float rotY;
float rotZ;


void setup(){
  
  size(900, 900, OPENGL);
  smooth();
  frameRate(30);
    model= new OBJModel(this);
    model.enableDebug();
    model.load("Vextapeulous.obj");
    model.scale(60);
    stroke(255);
    
}

void draw() {
  
  background(0);
  lights();
  pushMatrix();
  translate(width/2, height/2, 0);
  rotateX(rotY);
  rotateY(rotX);
  model.draw();
  popMatrix();

 
}
  
  
  
void mouseDragged()
{   noCursor();
    rotX += (mouseX - pmouseX) * 0.01;
    rotY -= (mouseY - pmouseY) * 0.01;
    
}   


