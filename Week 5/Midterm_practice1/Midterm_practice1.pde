// Midterm Practice version
// Art 22 Spring 2020


float x, y, w, h;
float noisePosX, noisePosY;
float xDirection, yDirection;

void setup() {
  size (600, 600);

  x= width/2;
  y = height/2;
  w = 40;
  h = 40;

  noisePosX = 0;
  noisePosY = 100;

  xDirection = 1;
  yDirection = 1;
  background(0);
}

void draw() {
 //background(255);
  strokeWeight(1);
  stroke(67, 177, 186);
  noFill();
  rect(x, y, w, h); 

  float m = noise(noisePosX);
  float n = noise(noisePosY);
  x = map(m, 0, 1, xDirection, width);
  y = map(n, 0, 1, yDirection, height);

  noisePosX = noisePosX + 0.005;
  noisePosY = noisePosY + 0.001;

   if(x > width || x < width){
  xDirection = xDirection * -1;
   }
   if(y > height || y > height){
   yDirection = yDirection * -1; 
  }
  if(x > width/2){
   strokeWeight(12);
   stroke(255,55);
   noFill();
   rect(x, y, w, h); 
  }
  if (mousePressed) {
    strokeWeight(55);
    stroke(random(0, 255), random(0, 255), random(0, 255));
    fill(0);
    rect(x, y, w,h);
      
  }
  
}
