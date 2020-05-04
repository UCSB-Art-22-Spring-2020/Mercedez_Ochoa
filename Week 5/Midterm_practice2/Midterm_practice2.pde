// Midterm_Pratice2
// Art 22 Spring 2020

float[] shelf = new float[50];

void setup(){
  size(600,600);
  
  // choose my number for first element
  shelf[0] = 28; // set index [0] to 28
  shelf[47] = 1; // set index [47] to 1
 println( "Index 0 is: ", int(shelf[0]));
 println( "Index 47 is: ", int(shelf[47]));
 
 // for loop but will trump above shelfs already set
 for(int i = 0; i < shelf.length; i++){
  shelf[i] = int(random(1,99)); // set random numbers from 1-99 
 }
 println(" The tenth element in this array is: ", int(shelf[10]));
 
 
}

void draw(){
  
}
