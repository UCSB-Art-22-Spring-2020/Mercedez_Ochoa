void box2(){
  // add another box 
  pushMatrix();
  translate(0, 0, 195); // 195 out in z direction
  fill(0, 0, 255);
  noStroke();
  box(25);
  popMatrix();
  z++;
}
