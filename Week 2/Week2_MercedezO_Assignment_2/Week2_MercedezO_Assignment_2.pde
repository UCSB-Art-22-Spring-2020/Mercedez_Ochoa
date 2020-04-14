// Assignment 2. Texture generator
// Art22 Spring 2020
// Author: Mercedez Ochoa
// Date 4-14-2020

PImage img; // set variable PImage 'img' for jpg
PShape s; // set variable PShape  's' for svg
int x, y; // set variable x and y position

void setup() {   
  size(1600, 900); //create window, size of jpg

  // load field image 'ocean' and 'pbag' shape
  img = loadImage( "ocean.jpg"); // exctract jpg file
  s = loadShape( "pbag.svg"); // excract svg file
  
  // position of ellipse
  x = 0;
  y = 390;
     
 }
void draw() {
  image(img, 0, 0, img.width *2, img.height *2); //  draw and resize (double) the image
  noCursor(); // hide mouse
  shape(s, mouseX, mouseY, s.width/6, s.height/6) ; // interact with mouse & resize shape 1/6th is size
   
   //Add texture to background with moving cirlces
   for (int i = 0; i < 300; i++) { // start with 0, loop until 0 < 300, add 1
    noStroke(); // no outline
    fill(4, 87, 161, 11); // blue interior color + alpha channel
    circle(random(width), random(80, height), 35); // random x, random y , radious 35
   }
  
  for (int i = 0; i < 100; i++) { // loop, start at 0, check if <100 if true add 1
    noStroke(); // no outline
    fill(255, 255, 255, random(70)); // intier white with random alpha channel
    circle(random(width), random(height), random(0, 35)); // random cirlces, random position, size and radio ranges 0-35
  }
  noStroke();
  fill(211,45,89, 180); // interior hot pink with alpha channel
  ellipse( x, y, 50,50); // draw ellipse
  
  // If conditionals interact with keyboard with wrap around
  if(keyPressed){ // is a key pressed?
   if(key == CODED){ // is it a special 'CODED' key?
    if(keyCode == RIGHT){  // is the 'CODED' key right arrow?
      x+=20; // add 20 pixels to the right
    }
    // check for LEFT key arrow 
    if(keyCode == LEFT) {  // is the 'CODED' key left arrow?
     x-=20; // move 20 pixels to the LEFT
    }
    if(keyCode == UP){  // is 'CODE' key up arrow?
      y-=20; // move 20 pixles top
    }
    if(keyCode == DOWN){  // is 'CODE' key down arrow?
      y+=20;  // move 20 picles down
    }
   
  }
  // check conditional to wrap around the screen
  if(x > width){  // if x goes out of bounds on the right
    x = 0; // reset to LHS of screen
  }
  if(x <0){
    x = width;  // reset to RHS of the screen
  }
}
 
  }
