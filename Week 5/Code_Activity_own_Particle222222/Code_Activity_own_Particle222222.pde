// Code Activity Week 5
// Art 22 Spring 2020
// Author Mercedez Ochoa
// reference: http://learningprocessing.com/videos/8-3

// lets create another particle 'q'
human Mark;  // initialize a class of human named Mark
human Paul;

particle p; // initialize a particle named p
particle q; 

ball r; // intialize a ball name 'r'

void setup(){
  size(600,600);
  Mark = new human( "Mark", 31, 1.5); // use constructor to set information about this particular human
  Paul = new human( "Paul", 15, 0);
  
  p = new particle( width/2, height/2, 10,2,1); // set in middle of screen, size= 10 pix, 2 = x speed, 1 = y speed
  // setting random position of x and y, size = 10 pixels, reverse= -2, -1
  q = new particle( random(0,width), random(0,height), 10, -2, -1);
  
  r = new ball(width/2, height/2, 3, 1, 1, 1, 0, 1.2);
 }
void draw(){
  background(0);
  Mark.display();  // display Mark's information
  Paul.display(); 
  
  p.display(); // display particle's information
  q.display();// display q particle's information
  
  r.display(); // display r particles information
   
}
void mouseReleased(){ 
  Mark.age++; // increase Mark's age every mouse click
  Paul.coffee+=5; // increate Paul's coffe consumption by 5 every 'click'
  
  q.size+=5; // incease particle 'q' size by 5 every 'click'
   
}
