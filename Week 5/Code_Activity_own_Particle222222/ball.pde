class ball {
  // draw basic movement 2-D primative
  //1. variables needed for class type 'ball'
  float xPos, yPos;
  float xvel, yvel;
  float xD, yD; //xD = xDirection
  float xG, yG;  // xG == xGravity

  // 2. Constructor with 8 elements
  ball( float xPos_, float yPos_, float xvel_, float yvel_, float xD_, float yD_, float xG_, float yG_) { // can't be same name as vairalbe use_
    xPos= xPos_; 
    yPos = yPos_;
    xvel= xvel_;
    yvel = yvel_; 
    xD = xD_; 
    yD = xD_; 
    xG = xG_; 
    yG = yG_;
  }
  // 3. Methods, display attributes of a point
  void display() {
    stroke(random(0, 255), random(0, 255), random(2, 255)); // inteir color set to white
    ellipse(xPos, yPos, 20, 20);
    xvel = xvel * xD; // make sure xVel is the correct direction (left or right) 3*1
    xPos+=xvel; // add x velocity to our x position
    xvel+=xG; // add gravity to velocity

    yvel = yvel * yD; // make sure yVel is the correct direction (up or down) 3*1
    yPos+=yvel; // add y velocity to our y position
    yvel+=yG; // add gravity to velocity

    if (xPos > width || xPos < 0) {  // check if we are at the edge of our screen.
      xD = xD * -1;   // change direction to other sign (+ to -, or - to +)
    }

    if (yPos > height || yPos < 0) {  // check if we are at the edge of our screen.
      yD = yD * -1;   // change direction to other sign (+ to -, or - to +)
    }
  }
}
