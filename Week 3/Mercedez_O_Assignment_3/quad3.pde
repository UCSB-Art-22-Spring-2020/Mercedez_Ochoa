void quad3(){
   // draw point 2
    strokeWeight(45); // size of point
    stroke(7, 83, 104, 40);  // blue interior plus alpha channel
    point(x2, y2); // draw point first point 2

    x2= x2 + random(-stepSizeX, stepSizeX); //add a random step to x2 direction
    y2 = y2 + random(-stepSizeY, stepSizeY); // add a random step to y2 direction 

    // setup if statment going off the screen and reset - BOUNDRIES
    // if (x2 > width || x2 < width/2) { // is x0 off the screen from L or R?
    if (x2 > width || x2 < 0) { // is x0 off the screen from L or R?
      x2 = random(0, width); // reset random # 0- 600 full range L to R of screen
    }
    if (y2 > height || y2 < 0) { // is y0 off the screen from top or bottom?
      y2= random(0, height); // reset random # 0- 600 full range top or bottom of screen
    }

    // draw point 3
    strokeWeight(35); // size of point
    stroke(255, 255, 255, 100);  // white interior add alpha channel
    point(x3, y3); // draw second point 1

    x3 = x3 + random(-stepSizeX, stepSizeX); //add a random step to x1 direction (-3 - +3)
    y3 = y3 + random(-stepSizeY, stepSizeY); // add a random step to y1 direction (-4 - +4)

    //// setup if statment going off the screen and reset - BOUNDRIES
    if (x3 > width || x3 < 0) { // is x0 off the screen from L or R?
      x2 = random(0, width); // reset random # 0- 600 full range L to R of screen
    }
    if (y3 > height || y3 < 0) { // is y0 off the screen from top or bottom?
      y3= random(0, height); // reset random # 0- 600 full range top or bottom of scr
      //  println(mouseX, mouseY);
    }
  
}
