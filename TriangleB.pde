float x;
float y;
float z;

trion tri1;
trion tri2;
trion tri3;

void setup() {
  size(500, 500, P3D);
  smooth();
  noStroke();
  fill(78, 98, 2, 53);
  tri1 = new trion(x, y, z);
  tri2 = new trion(x, y, z);
  tri3 = new trion(x, y, z);
  frameRate(20);
  
}
  
  void draw() {
    background(255);
    /*pushMatrix();
    translate(width/2, height/2, -99);
    rotateX(frameCount*PI/270);
    rotateY(radians(180)+y);
    rotateZ(radians(z++));
    //if (z > 200) {
    //rotateZ(radians(z--));
    //}  
    //if (z < 0) {
      //rotateZ(radians(z++));
    //}
    noStroke();
    tri1.display();
   popMatrix();
   */ 
  pushMatrix();
  translate(width/2, height/2, -99);
    rotateX(frameCount*PI/180);
    rotateY(radians(180));
    rotateZ(radians(180));
    noStroke();
    tri2.display();
    popMatrix();
    
    
      pushMatrix();
  translate(width/2, height/2, -99);
    rotateX(frameCount*PI/180);
    rotateY(radians(360)+ y);
    //rotateZ(radians(z++));
    noStroke();
    tri3.display();
    popMatrix();
  }


//void keyPressed() {
 // if SPACE == true {
  //  rotateX= 0
  
  
  class trion{
  float x, y, z;
  

trion(float xpos, float ypos, float zpos){
x = xpos;
y = ypos;
z = zpos;

}


void display(){



stroke(250, 78, 55, 255);
beginShape(LINES);
//vertex(385, -110, 91);
//vertex(386, -107, 97);
endShape(); 
 
fill(200, 34, 59, 85);
beginShape(QUADS);
vertex(17.6885, 54.6998, 94.9419);
vertex(-21.3771, 48.9244, 94.9419);
vertex(46.4293, 20.6210, 94.9419);
vertex(-60.9064, -39.9652, 94.9419);
endShape();




fill(200, 34, 89, 45);
beginShape(TRIANGLES);
vertex(-61.1706, 51.9621, 34.1171);
vertex(-102.3889, 55.6612, 34.1171);
vertex(-100.0747, 81.4478, 34.1171);
endShape();

fill(200, 34, 79, 95);
beginShape(TRIANGLES);
vertex(-61.1706, 51.9621, 34.1171);
vertex(-58.8564, 77.7487, 34.1171);
vertex(-100.0747, 81.4478, 34.1171);
endShape();


fill(200, 34, 59, 55);
beginShape(TRIANGLES);
vertex(-21.3771, 48.9244, 34.1171);
vertex(-102.3889, 55.6612, 34.1171);
vertex(-60.9064, -39.9652, 34.1171);
endShape();



fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(-60.9064, -39.9652, -0.0000);
vertex(-60.9064, -39.9652, 34.1171);
vertex(-102.3889, 55.6612, 34.1171);
vertex(-102.3889, 55.6612, -0.0000);
endShape();


fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(-100.0747, 81.4478, 34.1171);
vertex(-100.0747, 81.4478, -0.0000);
vertex(-102.3889, 55.6612, 34.1171);
vertex(-102.3889, 55.6612, -0.0000);
endShape();


fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(-100.0747, 81.4478, 34.1171);
vertex(-100.0747, 81.4478, -0.0000);
vertex(-58.8564, 77.7487, 34.1171);
vertex(-58.8564, 77.7487, -0.0000);
endShape();


fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(-61.1706, 51.9621, -0.0000);
vertex(-61.1706, 51.9621, 34.1171);
vertex(-58.8564, 77.7487, 34.1171);
vertex(-58.8564, 77.7487, -0.0000);
endShape();


fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(-61.1706, 51.9621, -0.0000);
vertex(-61.1706, 51.9621, 34.1171);
vertex(-21.3771, 48.9244, -0.0000);
vertex(-21.3771, 48.9244, 34.1171);
endShape();



fill(200, 88, 89, 65);
beginShape(QUADS);
vertex(-4.6625, 81.2019, 53.8845);
vertex(-4.6625, 81.2019, -0.0000);
vertex(-21.3771, 48.9244, -0.0000);
vertex(-21.3771, 48.9244, 94.9419);
endShape();


fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(-4.6625, 81.2019, 53.8845);
vertex(-4.6625, 81.2019, -0.0000);
vertex(-21.3771, 48.9244, 94.9419);
endShape();

fill(200, 88, 89, 75);
beginShape(QUADS);
vertex(-4.6625, 81.2019, 53.8845);
vertex(-4.6625, 81.2019, -0.0000);
vertex(17.6885, 54.6998, 94.9419);
vertex(17.6885, 54.6998, 94.9419);
endShape();

fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(-21.3771, 48.9244, 34.1171);
vertex(-60.9064, -39.9652, 34.1171);
vertex(-60.9064, -39.9652, 94.9419);
vertex(-21.3771, 48.9244, 94.9419);
endShape();


fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(76.7869, -15.3748, 54.8992);
vertex(-60.9064, -39.9652, 45.6347);
vertex(-60.9064, -39.9652, 94.9419);
vertex(77.5563, -16.2870, 45.6347);
endShape();

fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(-61.5558, -41.3643, -0.0000);
vertex(-60.9064, -39.9652, 45.1171);
vertex(93.6046, -35.3160, 45.6347);
vertex(93.6046, -35.3160, -0.0000);
endShape();

fill(200, 88, 89, 75);
beginShape(TRIANGLES);
vertex(77.5563, -16.2870, 45.6347);
vertex(-60.9064, -39.9652, 45.1171);
vertex(93.6046, -35.3160, -0.0000);
endShape();

fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(77.5563, -16.2870, 45.6347);
vertex(-60.9064, -39.9652, 45.1171);
vertex(93.6046, -35.3160, 45.6347);
vertex(93.6046, -35.3160, -0.0000);
endShape();


fill(200, 88, 89, 55);
beginShape(TRIANGLES);
vertex(77.5563, -16.2870, 54.8992);
vertex(46.4293, 20.6210, 54.8992);
vertex(46.4293, 20.6210, 94.9419);
endShape();


fill(200, 88, 89, 55);
beginShape(TRIANGLES);
vertex(77.5563, -16.2870, 54.8992);
vertex(46.4293, 20.6210, 54.8992);
vertex(176.4003, 0.6162, 54.8992);
endShape();

fill(250, 88, 99, 75);
beginShape(TRIANGLES);
vertex(-60.9064, -39.9652, 94.9419);
vertex(17.6885, 54.6998, 94.9419);
vertex(-21.3771, 48.9244, 94.9419);
endShape();

fill(200, 88, 89, 55);
beginShape(TRIANGLES);
vertex(107.5058, 55.0960, 61.2399);
vertex(46.4293, 20.6210, 61.2399);
vertex(99.1331, 12.5090, 24.0574);
endShape();


fill(200, 88, 89, 55);
beginShape(TRIANGLES);
vertex(107.5058, 55.0960, 61.2399);
vertex(46.4293, 20.6210, 61.2399);
vertex(99.1331, 12.5090, 24.0574);
endShape();


fill(200, 88, 89, 55);
beginShape(TRIANGLES);
vertex(176.4003, 0.6162, 54.8992);
vertex(176.4003, 0.6162, 24.0574);
vertex(55.3899, 19.2419, 54.8992);
vertex(99.1331, 12.5090, 24.0574);
endShape();


fill(200, 88, 89, 55);
beginShape(TRIANGLES);
vertex(176.4003, 0.6162, 24.0574);
vertex(107.5058, 55.0960, 61.2399);
vertex(99.1331, 12.5090, 24.0574);
endShape();

fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(176.4003, 0.6162, -0.0000);
vertex(176.4003, 0.6162, 24.0574);
vertex(107.5058, 55.0960, 61.2170);
vertex(107.5058, 55.0960, -0.0000);
endShape();

fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(176.4003, 0.6162, -0.0000);
vertex(176.4003, 0.6162, 24.0574);
vertex(107.5058, 55.0960, 61.2170);
vertex(107.5058, 55.0960, -0.0000);
endShape();

fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(46.4293, 20.6210, 94.9419);
vertex(17.6885, 54.6998, 94.9419);
vertex(46.4293, 20.6210, 61.2399);
vertex(17.6885, 54.6998, 61.2399);
endShape();


fill(200, 88, 89, 45);
beginShape(TRIANGLES);
vertex(46.4293, 20.6210, 61.2399);
vertex(17.6885, 54.6998, 61.2399);
vertex(145.5371, 76.5630, 61.2399);
endShape();

fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(107.5058, 55.0960, 61.2170);
vertex(107.5058, 55.0960, -0.0000);
vertex(145.5371, 76.5630, -0.0000);
vertex(145.5371, 76.5630, 61.2399);
endShape();


fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(17.6885, 54.6998, 61.2399);
vertex(17.6885, 54.6998, -0.0000);
vertex(145.5371, 76.5630, -0.0000);
vertex(145.5371, 76.5630, 61.2399);
endShape();

fill(200, 88, 89, 85);
beginShape(QUADS);
vertex(176.4003, 0.6162, 54.8992);
vertex(176.4003, 0.6162, -0.0000);
vertex(77.5563, -16.2870, 45.6347);
vertex(77.5563, -16.2870, -0.0000);
endShape();

fill(200, 88, 89, 55);
beginShape(QUADS);
vertex(93.6046, -35.3160, 45.6347);
vertex(93.6046, -35.3160, -0.0000);
vertex(77.5563, -16.2870, 45.6347);
vertex(77.5563, -16.2870, -0.0000);
endShape();

fill(200, 88, 89, 75);
beginShape(QUADS);
vertex(-61.5558, -41.3643, -0.0000);
vertex(-21.3771, 48.9244, -0.0000);
vertex(93.6046, -35.3160, -0.0000);
vertex(176.4003, 0.6162, -0.0000);
endShape();

fill(200, 88, 89, 65);
beginShape(QUADS);
vertex(17.6885, 54.6998, -0.0000);
vertex(-4.6625, 81.2019, -0.0000);
vertex(46.4293, 20.6210, -0.0000);
vertex(77.5563, -16.2870, -0.0000);
vertex(145.5371, 76.5630, -0.0000);
endShape();



fill(200, 88, 89, 75);
beginShape(TRIANGLES);
vertex(46.4293, 20.6210, -0.0000);
vertex(17.6885, 54.6998, -0.0000);
vertex(145.5371, 76.5630, -0.0000);
endShape();


fill(200, 88, 89, 75);
beginShape(TRIANGLES);
vertex(176.4003, 0.6162, 54.8992);
vertex(176.4003, 0.6162, -0.0000);
vertex(151.3114, 62.3539, 20.5675);
endShape();

fill(200, 88, 89, 75);
beginShape(TRIANGLES);
vertex(176.4003, 0.6162, 54.8992);
vertex(145.5371, 76.5630, 61.2399);
vertex(151.3114, 62.3539, 20.5675);
endShape();


fill(200, 88, 89, 75);
beginShape(TRIANGLES);
vertex(176.4003, 0.6162, -0.0000);
vertex(145.5371, 76.5630, -0.0000);
vertex(151.3114, 62.3539, 20.5675);
endShape();



fill(200, 88, 89, 75);
beginShape(TRIANGLES);
vertex(176.4003, 0.6162, 54.8992);
vertex(145.5371, 76.5630, 61.2399);
vertex(151.3114, 62.3539, 20.5675);
endShape();


fill(200, 88, 89, 75);
beginShape(TRIANGLES);
vertex(157.0571, 48.2151, 62.7350);
vertex(107.5058, 55.0960, 61.2399);
vertex(145.5371, 76.5630, 61.2399);
endShape();


fill(200, 88, 89, 75);
beginShape(TRIANGLES);
vertex(157.0571, 48.2151, 62.7350);
vertex(107.5058, 55.0960, 61.2399);
vertex(176.4003, 0.6162, 54.8992);
endShape();
}

}
    
  
  
