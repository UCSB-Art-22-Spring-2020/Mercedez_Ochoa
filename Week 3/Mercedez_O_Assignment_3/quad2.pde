void quad2(){
   strokeWeight(5); // outline thinkness
    stroke(255, 255, 255, 150);  // pink outline + alpha channel
    noFill(); // no fill
    rect(x1, y1, 50, 50); // draw rectangle
    xVel1 = xVel1 * xD1; // make sure xVel is the correct direction (left or right) 3*1
    x1+=xVel1; // add x velocity to our x position
    // add gravity in x-direction (horizontal)
    xVel1+=xG1; // add gravity to velocity

    yVel1 = yVel1 * yD1; // make sure yVel is the correct direction (up or down) 3*1
    y1+=yVel1; // add y velocity to our y position
    // add gravity in y-direction (vertical)
    yVel1+=yG1; // add gravity to velocity

    if (x1 > width || x1 < width/2) {  // check if we are at the edge of our screen.
      xD1 = xD1 * -1;   // change direction to other sign (+ to -, or - to +)
    }

    if (y1 > height || y1 < 0) {  // check if we are at the edge of our screen.
      yD1 = yD1 * -1;   // change direction to other sign (+ to -, or - to +)
    }
  
}
