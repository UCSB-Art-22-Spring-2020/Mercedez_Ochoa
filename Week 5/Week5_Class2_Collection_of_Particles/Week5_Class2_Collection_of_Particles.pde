// lets create a Collexction of Particles using loops

// Create an arrayList to hold many particles
ArrayList<particle> plist = new ArrayList<particle>(); // ArrayList type 'particle' called 'plist'
ArrayList<walker> wlist = new ArrayList<walker>(); // ArrayList type 'walker' called wlist

int total = 100; // total of number of particles we want


void setup() {
  size(600, 600);

  //for ( int i = 0; i< total; i++) {
  //  plist.add(new particle( width/2, height/2, 10, random(-2,2), random(-2,2))); // add new particles with  a random speedX and speedY value
  //}  
}
void draw() {
  background(198, 111, 91);
  
  // particle p is place holder for it's name (particle)
  for (particle p : plist) {  // for every particle in the plist 
    p.display(); // run its display() function
  }
  // walker w is place holder for 'walker'
  for( walker w : wlist){ // for every walker in the wlist
    w.display(); // run the display() function 
  }
  
 // Particle generator
  // if our mouse is pressed then draw lots of particles, if not pressed then nothing happens
  // if our mouse is pressed, add new particle to plist contains 5 elements
  if(mousePressed){
     plist.add(new particle( mouseX, mouseY, 10, random(-2,2), random(-2,2))); // add new particles, interact with mouse give random speedX and speedY value
    // if our moused is pressed, add new partilce to the wlist containd 3 elements
    wlist.add(new walker(mouseX, mouseY, 10));
  }
}
void mouseReleased() {
}
