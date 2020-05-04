// Midterm_Pratice2  Bonus is up to you! ...you'll need mouseReleased(), random(), and a conditional if() statement to complete this   
// Art 22 Spring 2020

float[] shelf = new float[10];

void setup(){
  size(600,600);
  
  // for loop but will trump above shelfs already set
  
    for(int i = 0; i < shelf.length; i++){
     shelf[i] = int(random(1,50)); // set random numbers from 1-99 
     
      }
    
 printArray(shelf);
}

 void mouseReleased(){
  
 }
