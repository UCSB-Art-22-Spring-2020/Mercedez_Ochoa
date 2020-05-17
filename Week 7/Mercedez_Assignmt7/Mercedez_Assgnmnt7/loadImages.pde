void loadImages() {
   // create sphere for plant mars
   planetMars = loadImage( "mars.jpg"); // load image
   noStroke();
   noFill();
   mars = createShape(SPHERE, -75); // set mars to shphere shape
   mars.setTexture(planetMars); // wrap planet mars image around sphere mars
   
   // Create sphere for planet earth
   planetEarth = loadImage( "earth.jpg"); // load earth image
   noStroke();
   noFill();
   earth = createShape(SPHERE, 150);
   earth.setTexture(planetEarth);
   
   // load astroid obj. file
   astroid = loadShape("astroid2.obj");
   
  // load svg for mouse interaction
  astronaut = loadShape( "anot.svg");
}
