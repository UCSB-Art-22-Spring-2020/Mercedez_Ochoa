// Assignment 4: Copy and paste image pixels
// Art 22 Spring 2020
// Author: Mercedez Ochoa
// Date: April 25, 2020

PImage img; // create image variable 'flag'

void setup(){
  size(958,645);
  img = loadImage("flag.jpg"); // load flag image
}
  
void draw(){
  
 // image(img, 0,0);
 
 
  loadPixels();
  img.loadPixels();
  for(int x = 0; x < width; x++){
    for(int y = 0; y < height; y++){
     // float d = dist (x, y, width/2, height/2);
      int index = x + y * width;
      
      // set float variables to image pixels,flashlight effect
      float r = red(img.pixels[index]); 
      float g = green(img.pixels[index]); 
      float b = blue(img.pixels[index]);
      float d = dist(mouseX, mouseY, x, y); // set distance around the mouse, interactive with mouse
      float m = map(d,0, 250,2,0); // use map to set new location
      pixels[index] = color(r*m, g*m, b*m);  // set pixel array with color(RGB)
      // reference from http://learningprocessing.com/videos/15-4
    }
  }
  updatePixels();
  
   // println(mouseX +"," +mouseY); // print mouse coordinates
 
 float x1 = random(180,width); // x1 location of copy
 float y1 =random(112, height); // y location of copy
 
 // assign w & h for both copy of image and paste to window section
 int w = int(random(0,30)); // set w as random num 0-30
 int h = int(random(0,30)); // set h at random num 0-30
 
 // destination where are we pasting section in window?
 float x2 = x1 +10;
 float y2 = y1 + random(-10,10);
 
 copy(int(x1), int(y1), w, h, int(x2), int(y2), w, h);

 }
