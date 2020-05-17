// Coding Challenge with 3D Prims
// Exploring independently translating/rotating multiple 3D prim

import peasy.*;
// initialize our camera object
PeasyCam cam;

// create coordiantes for box
float x, y, z;

void setup(){
 size(600,600, P3D); // using the 3D default render
 
 // set camera 600 pixels away from orgin, by defual Peasy orgin middle of screen
 cam = new PeasyCam(this, 600);
}
void draw(){
 background(255);

 // Interactive rotation based on mouse, use Map function convert to degrees
 float rotX = map(mouseX, 0, width, 0, TWO_PI); // map mouseX from 0 - width to 0 - 360 degrees (aka TWO_PI)
 float rotY = map(mouseY, 0, height, 0, TWO_PI); // same for mouseY

 //// lets draw our 3D prim
 strokeWeight(1); //thinck outline
 stroke(0); //black outline
// fill(175); // intior gray
 noFill(); // see thru shap
 //box(100);
 sphere(170);
 
 triangle(); // run triangle
 
 box1(); // run box1
 box2(); // run box2
 box3(); // run box3
 box4();
 box5();
 
 sphere1();
 sphere2();
  
}
 
 
 
 
  
