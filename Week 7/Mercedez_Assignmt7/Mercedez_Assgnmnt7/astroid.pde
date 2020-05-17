// class astroid
class astroid{
  // draw basic movemnt for 3d 
  // 1. variable needed for class 'astroid' type
  float x, y, z;
  float size;
  float speedX, speedY, speedZ;
  
  // 2. Constructor, needs 7 elements: x, y, z, size, speedX, speedY, speedZ
  astroid(float x_, float y_, float z_, float size_, float speedX_, float speedY_, float speedZ_){
    x = x_;
    y = y_;
    z = z_;
    size = size_;
    speedX = speedX_;
    speedY = speedY_;
    speedZ = speedZ_;
  }
  // 3. lets use astroid obj. as our particle'
  void display(){
    pushMatrix();
    translate(x, y, z); // go to x, y, z location and translate
    scale(20); // scale astroid by 20
   shape(astroid, 0, 0); // draw astroid at origin
   popMatrix();
   
   point(x, y, z); // where to draw astroid
   x = x + speedX; // set x to speedX we want
   y = y + speedY; // set y to speedY we want
   z = z + speedZ; // set z to speedZ we want
   
   // check for x, y, z boundaries and reset in a random location (inside box)
   // check to see if x,y,z has has gone outside the boundaries
   if(x > boundary || x < -boundary || y > boundary || y < -boundary || z > boundary || z < -boundary) { // if true then..
     // then reset x, y, z to random location in the box
     x = random(-boundary, boundary); // random range is from -700 - +700
     y = random(-boundary, boundary);
     z = random(-boundary, boundary);
   }
  }
}
