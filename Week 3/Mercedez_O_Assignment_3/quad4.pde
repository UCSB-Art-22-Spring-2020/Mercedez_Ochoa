void quad4(){
  strokeWeight(15); // outline thinckness
    stroke(145, 914,47, 40); // shade of green
    point(x4, y4); // draw point

    float m = noise(noisePosX); // get a noise value for x4 position
    float n = noise(noisePosY); // get noise value for y4 position
    x4 = map(m, 0, 1, 0, width/2); // map position varialble m & n
    y4 = map(n, 0, 1, height/2, height);

    noisePosX = noisePosX + 0.001; // increase noise value + smooth
    noisePosY = noisePosY + 0.001;
}
