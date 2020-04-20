void init(){
 // frameRate(15);
  img = loadImage("background.PNG"); // load png file
  
  // stating positions for geometric shapes, middle
  x0 = x1 = width/2; 
  y0 = y1 = height/2;

  // initial velocity and gravity to x1 and y1 for rect in quad 2
  xVel1= 3; // velocity of 2 to x1
  yVel1 = 1; // velocity of 1 to y1
  xD1 = 1; // x1 direction (to R)
  yD1 = 1; // y1 direction (to L)
  xG1 = 0; // initial x1 acceleration
  yG1 = -1.20; // initial y1 accelaration

  // step size for quad 3
  x2 = x3 = 998; // set x2/3 point to quad 3
  y2 = y3 = 830; // set y2/3 points to qud 3
  stepSizeX = 3; // set stepsize
  stepSizeY = 4; // set stepsize

  // set up for quad 4
  x4 = 229;
  y4 = 923;

  noisePosX = 0; // start noise position
  noisePosY = 100; //  start further 

  background(img); 
}
