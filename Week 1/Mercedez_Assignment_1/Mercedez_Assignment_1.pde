// Assisgnment 1 : Dynamic Drawing
// Art22 Spring 2020
// Author: Mercedez Ochoa
// Date: April 6, 2020

// Pshapte 'alien' from process.org
  

PShape alien, head, body; // create PShape varialbes
int number; // create int variable for square (x,y,extent)


void setup(){
  size(600, 600); // window size
  number = 30; // start square at x = 30
 
  // Create the shape group
  alien = createShape(GROUP);

  // Make two shapes
  ellipseMode(CORNER);
  head = createShape(ELLIPSE, 25, 0, 50, 50); // create head ellipse
  head.setFill(color(255,0,0)); // fill color red
  body = createShape(RECT, 25, 45, 50, 40); // create body rectangle  
  body.setFill(color(0,255,233)); // fill rectange with aqua blue

  // Add the two "child" shapes to the parent group stacking them
  alien.addChild(body);
  alien.addChild(head);
}

void draw() {
  background(161, 229, 153); // background shade of green
  translate(50, 15);
  shape(alien); // Draw the group
  
  // Mouse interaction with point
  strokeWeight(25); // size of point
  point(mouseX,mouseY); // draw shape interaction with mouse
  
  fill(0); // fill square with black
  stroke(238,255,0); // yellow outline
  square(number,200,55); // draw square
  number = number + 1; // make square move 
     
  if (mouseX < 200 || mouseX > 400){ // If mouseX less 200 or mouseX is greater 400 true 
    stroke(148,0,255,130); // then fill brush purple with aplpha channel of 130
  } else{
    stroke(0); // fill it black
  }
  
}

 
  
