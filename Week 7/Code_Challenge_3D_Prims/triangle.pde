void triangle(){
  // create triange inside sphere
 pushMatrix();
strokeWeight(4); // thinker outline
stroke(242,14,204); // hot pink outline
rotateX(PI/2); // rotate x 180 degree
rotateZ(-PI/6); // rotate z -60 degrees

beginShape();
vertex(-100, -100, -100);
vertex( 100, -100, -100);
vertex(   0,    0,  100);

vertex( 100, -100, -100);
vertex( 100,  100, -100);
vertex(   0,    0,  100);

vertex( 100, 100, -100);
vertex(-100, 100, -100);
vertex(   0,   0,  100);

vertex(-100,  100, -100);
vertex(-100, -100, -100);
vertex(   0,    0,  100);
endShape();
popMatrix();
  
}
