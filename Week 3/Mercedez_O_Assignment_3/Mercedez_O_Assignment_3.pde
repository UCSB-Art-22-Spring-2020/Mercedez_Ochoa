// Assignment 3: Gererative Art with Motion
// Art 22 Spring 2020
// Author: Mercedez Ochoa
// April 21, 2020

PImage img;  // PImage variable as img
//PShape e; // svg variable for earth
float x0, y0, x1, y1, x2, y2, x3, y3, x4, y4; // variable for 4 geometric shapes
float xVel1, yVel1;  // velocity variable for ellilpse
float xD1, yD1;  // direction variables for geometric shapes
float xG1, yG1; // gravity varialbes for geometic shapes
float stepSizeX, stepSizeY; // seperate stepsize for x and y direction
float noisePosX, noisePosY; // position of noise value

void setup() {
  size(1329, 1161); // image full size
  init(); // run/call init() function
}

void draw() {
  // image(img, 0, 0); // draw image at full scale

 //noCursor(); // hide mouse
  //shape( e, mouseX, mouseY, e.width/8, e.height/8); // draw shape, interact with mouse & resize 1/2 scale

  // draw first shape in quad one
  if (mouseX < width/2 && mouseY < height/2) { // are we in the top left quadrant 1?
     quad1(); // run/call quad1 function
  }

  // draw the second shape in quad 2 add velocity and gravity

  if (mouseX > width/2 && mouseY < height/2) { // are we in top right quaddrant 2?
     quad2(); // run/call quad2 function
  }
  
  // draw third shape in 3rd quadrant, random walk and stepsize
  if (mouseX > width/2 && mouseY > height/2) {  // are we in the bottom right quadrant 3?
    quad3(); // run/call quad3 function
  }
    // Draw Quad 4 noise and map
    if (mouseX < width/2 && mouseY > height/2) { // are in the bottom left quadrant 4?
      quad4();  // run/call quad4 function
  }
}
