void quad1(){
  for (int i = 0; i <4; i++) {  // for loop add ellipse
      strokeWeight(5); // outline thinkness
      stroke(189, 149, 105, 60); // outline gold color + alpha channel
      noFill();   // no fill
      ellipse(random(0, width/2), random(0, height/2), random(20, 40), random(20, 40));// draw ellipse random function
    }
  
}
