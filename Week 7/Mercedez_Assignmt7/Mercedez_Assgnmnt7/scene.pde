// lets create 'scene' to draw entire scene for us
void scene(){
  
  // global translation and rotation --> effect entire code
  translate(camX, camY, camZ);
  rotateX(radians(rotX) );
  rotateY(radians(rotY) );
  rotateZ(radians(rotZ) );
    
  // Draw our box 'container' for the astroids
  noStroke(); // no outline
  noFill(); // make it see through box
  sphere(boundary * 2); // boundary for - and + direction
 
  
    //only rotate mars
  pointLight(255, 255, 255, 0, 0, 100); 
   
  pushMatrix();
  translate(-200, 0, 0);
  rotateY(PI * frameCount * 0.003); // rotate 360 degrees in Y direction slow
  shape(mars);
  popMatrix();
 
  
 // pointLight(255, 255, 255, 0, -255, 0); //pointLight( 255, 255, 255, 0, 0, -100);
 pushMatrix();
 //noLights();
 pointLight(255,  255,  255,  0,  0,  -150); 
  translate(200 *2, 0,0);
  shape(earth);
  popMatrix();
   
    
}
 
