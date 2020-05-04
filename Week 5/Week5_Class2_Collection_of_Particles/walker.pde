// create a new particle 'Walker', a random walk function

class walker{
  // draw basic movement 2-D primative
  //1. variables needed for class type 'walker'
  float x, y;
  float size;
  int lifeSpan = 255; // create variable for our alapha channel
  
  // 2. Constructor, need three elements: x, y, size
  walker( float x_, float y_, float size_){ // can't be same name as vairalbe use_
    x= x_;
    y = y_;
    size = size_;
  }
  // 3. Methods, displa attributes of a point
  void display(){
    strokeWeight( size ); // how think outline you want
    stroke(255, lifeSpan); // black inteir color with 'lifespan' alpha channel (starts at 255)
    point(x,y); // where draw point
    lifeSpan--; // every loop transparency decreases by one until disseapears 
    x= x + random(-3,3); //  add x by adding random #s from -3 to +3 step sizes going L and R
    y = y + random(-3,3); // add y by adding random #s from -3 to +3 step size going Up or Dwn
   
  }
}
