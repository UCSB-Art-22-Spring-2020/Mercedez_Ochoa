void box1(){

  //// lets create a box using push/pop boundries, by default its (0,0,0)
 pushMatrix();
 translate(x,y,z); // coordinates for box by defualt --> (0,0,0);
 fill(255,0,0); // red intior
 box(20); // 20x20x20
 popMatrix();
 z++; // increase z variabe only to push/pop box
}
