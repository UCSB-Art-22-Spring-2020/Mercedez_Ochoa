// code activity: create changes to the behavior of the movement with conditionals 
// (e.g. based on keyboard/mouse interaction, timing, position) 

// How add effect of gravity/ acceleration

// create varialbes for ellipse x and y position
float xPos, yPos; // position variables for geometry
float xVel, yVel; // velocity variables for geomerty
float xDirection, yDirection; // direction variables for geometry
float xGravity, yGravity; // acceleration varialbes

void setup(){
  size(600,600); 
 
   // set initial value, middle left
  xPos = 0;
  yPos = height/2;
  
  xVel = 1; // velocity of 2 to xPos
  yVel = 1; // velocity of 1 to yPos
  xDirection = 1; //  initial x direction (R)
  yDirection = 1; // initial y direction (R)
  xGravity =0; // initial 0 x gravity
  yGravity = -1.2; // initial y acceleration (- is upwards and + is downwards)
  background(241,170, 151); // background color first
  
}
void draw(){
  //background(421,170,151);
  strokeWeight(4); // ouline thickness
  stroke(34,153,171,80); // interior color shade blue + alpha channel 
  noFill();
  rect(xPos, yPos, 55, 55); 
  
   
   xVel = xVel * xDirection; // make sure xVel is the correct direction (left or right) 3*1
  xPos+=xVel; // add x velocity to our x position
  // add gravity in x-direction (horizontal)
  xVel+=xGravity; // add gravity to velocity
  
  yVel = yVel * yDirection; // make sure yVel is the correct direction (up or down) 
  yPos+=yVel; // add y velocity to our y position
  // add gravity in y-direction (vertical)
  yVel+=yGravity; // add gravity to velocity
  
 
  if(xPos > width || xPos < 0){  // check if we are at the edge of our screen.
   xDirection = xDirection * -1;   // change direction to other sign (+ to -, or - to +)
  }
  
  if(yPos > height || yPos < 0){  // check if we are at the edge of our screen.
   yDirection = yDirection * -1;   // change direction to other sign (+ to -, or - to +)
   
  }
  if(keyPressed){  // is that key x ?
    if(key == 'x'){ // if key is pressed equal to x ... then
      xVel = random(1,10); // if so, set x velocity to random number between 1- 9.--
     xDirection = xDirection * -1; // change direction
     
     }
     if(key == 'y'){ // if key is pressed equal to y ... then
      yVel = random(1,10); // if so, set y velocity to random number between 1- 9. 
    
    }
  }
  // println(xDirection); show x position
}
