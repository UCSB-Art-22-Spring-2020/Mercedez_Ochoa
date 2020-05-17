// Assignment 7: 3D Scene
// Art 22 Spring 2020
// Author: Mercedez Ochoa
// Date: 5/ 17/ 2020

// Creating a 3D World --> Outerspace
import peasy.*; // rotate came and move origin in center of screen
PeasyCam cam; // initialize camera


//adioPlayer for sound
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer sound;

// background image --> starry galaxy
PImage galaxy; 

// Create Pshape for planets and use image as 'wrapping'
PShape earth; // sphere for earth
PImage planetEarth; // earth 'wrapping'

PShape mars; // sphere for mars
PImage planetMars; // mars 'wrapping'

// create particle system called 'Astroid'
PShape astroid; // astroids

// Create svg one for mouse, other for inside mars
PShape astronaut;

// Create arrayList to hold my particles --> astroids
ArrayList<astroid> alist = new ArrayList<astroid>(); // ArrayList type 'atroid' called a list

int boundary = 1070   ; // boudary for 'scene' box
int total = 75; // total number of astroids

float rotX, rotY, rotZ, camX, camY, camZ; // rotation and translation of navigation

void setup(){
   size(1081, 720, P3D); // rendering for 3D object types
   galaxy = loadImage( "galaxy.jpg"); // load galaxy image
  
   // load sound file and loop it
   minim = new Minim(this);
   sound = minim.loadFile("apollo.mp3", 1024);
   sound.loop();
   
   
  loadImages();
   
   // initialize and position peasy cam
   cam = new PeasyCam(this, 600); // set peasycam 700 pixels away from origin
   
   // lets add "total" number of astroids (40) to our alist
   for( int i = 0; i < total; i++){
     alist.add(new astroid(
     // set postion location btween -715 & 715 boundary
     random(-boundary, boundary), // set initial x location
     random(-boundary, boundary), // wet initial y location
     random(-boundary, boundary), // set initial z location
     15, // size of astroid
     random(-0.2, 0.2), // adding new particle with random speedX value
     random(-0.2, 0.2), // adding new particle with random speedY value
     random(-0.2, 0.2) )); // adding new particle with random speedZ value
   }
    
}
void draw(){
 background(galaxy);  // set image as background
    
 // lets toggle the light on and off when moused if pressed 
 if(mousePressed){
  pointLight(0, 255, 148, 550, 0, 0); // greenish blush point light
 }
  
   noCursor();
  shape(astronaut, mouseX, mouseY, astronaut.width/5, astronaut.height/5); // Niel
  shape(astronaut, mouseX/6, mouseY/6, astronaut.width/4, astronaut.height/4); // Buzz
  
  scene(); // run the scene() function to draw 3D scene
  nav(); // run nav() function
  
  // astroid a is place holder for its name (astroid)
  for(astroid a: alist){ // for every astroid in the alist
   a.display(); // run its display() function
  }
  fill(255);
 println(" Use and press the followingn keys: mouse,  right key > ,  Left key <  , Up & down key arrows and 'z' and 'o' keys  to see what happens...");
}
 
  
