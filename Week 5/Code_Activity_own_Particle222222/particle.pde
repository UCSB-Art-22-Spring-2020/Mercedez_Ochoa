class particle{
  // draw basic movement 2-D primative
  //1. variables needed for class type 'particle'
  float x, y;
  float size;
  float speedX, speedY;
  
  // 2. Constructor
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
    stroke(255); // inteir color set to white
    point(x,y); // where draw point
    x= x + speedX; // set x to speedX we want
    y = y + speedY; // set y to speedY we want
   }
}
