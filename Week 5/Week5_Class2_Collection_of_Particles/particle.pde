class particle{
  // draw basic movement 2-D primative
  //1. variables needed for class type 'particle'
  float x, y;
  float size;
  float speedX, speedY;
  int lifeSpan = 255; // create variable for our alapha channel
  
  // 2. Constructor , need 5 elements: x, y, size, speedx, speed y
  particle( float x_, float y_, float size_, float speedX_, float speedY_){ // can't be same name as vairalbe use_
    x= x_;
    y = y_;
    size = size_;
    speedX = speedX_;
    speedY = speedY_;
    
  }
  // 3. Methods, displa attributes of a point
  void display(){
    strokeWeight( size ); // how think outline you want
    stroke(0, lifeSpan); // inteir color set to black with 'lifespan' alpha channel (starts at 255)
    point(x,y); // where draw point
    lifeSpan--; // every loop transparency decreases by one until disseapears 
    x= x + speedX; // set x to speedX we want
    y = y + speedY; // set y to speedY we want
    
    // Check for boundaries and reverse direction if at the edge
    if(x >= width || x <= 0){ // is x position off right side of the screen OR Left side of the screen?
     speedX = speedX * -1; // reverse direction
    }
    if(y >= height || y <= 0){ // is the y off bottom of screen OR top off the screen?
      speedY = speedY * -1;  // reverse direction
     }
  }
}
