// use keyboard to navigate in our 3D world
// use up & down arrow keys to change x rotation
// use left and right arrow keys to change y direction
// use key z and o to zoom in and out

void nav(){
  
   if(keyPressed){
    if(key == CODED){
      
      if(keyCode == UP){
        rotX++; // increase x-axis rotation
      }
     if(keyCode == DOWN){
       rotX--; // decrese x-axis opposite rotation
     }
     if(keyCode == LEFT){
       rotY++; // increase y-axis rotation
     }
     if(keyCode == RIGHT){
       rotY--; // decrease y-axis opposite rotation
     }
    }
    // we want to move forward or zoom in and backout zoom out in scene
    // the keyboard is rotation all the geometries inside the box
    if(key == 'z'){
      camZ+=15; // increase nav cam z position by 15
    }
    if(key == 'o'){
      camZ-=15; // decrease nav cam z position by 15
    }
  }
}
