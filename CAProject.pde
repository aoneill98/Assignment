/* Aron O'Neill
C16466214
DT228/2
OOP   
*/

import ddf.minim.*;

Minim minim;
AudioPlayer noise1;

Star[] stars = new Star[800];
float speed;
Speedo speedMeter;
Fuel FuelBar;
int count = 0;



void setup() {
  minim = new Minim(this);
  noise1 = minim.loadFile("ufo.wav");
  size(960, 636);
  radar1 = new Radar(width - width / 13, height - height / 10, 40, 0.5, color(0, 255, 0));
  stroke(255);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  FuelBar = new Fuel(count);
  speedMeter = new Speedo();
  stroke(255);
}

Radar radar1;

void draw() {
    radar();
    speedMeter.speedSetup();
    speedMeter.bar();
    FuelBar.FuelSetup();
    FuelBar.bar();
}

void keyPressed() {
  switch(key)
  {
    case 'w':
    FuelBar.sets1();
    speedMeter.count2();
    speedMeter.speedSetup();
    speedMeter.bar();
    FuelBar.Fuelspeed();
    FuelBar.bar();
    break;
    
    case 'a':
    FuelBar.sets();
    FuelBar.count();
    speedMeter.count2();
    speedMeter.speedSetup();
    speedMeter.bar();
    FuelBar.Fuelspeed();
    FuelBar.bar();
    break;
    
    case 'd':
    noise1.play();
    FuelBar.sets2();
    FuelBar.count2();
    speedMeter.count2();
    speedMeter.speedSetup();
    speedMeter.bar();
    FuelBar.Fuelspeed();
    FuelBar.FuelSetup();
    FuelBar.bar();
    break;
    
    case ' ':
    FuelBar.reFuel();
    speedMeter.speedSetup();
    speedMeter.bar();
    break;
  }
}

void keyReleased() {
  switch(key)
  {
    case 'w':
    FuelBar.sets();
    FuelBar.release();
    speedMeter.move();
    break;
    
    case 'd':
    noise1.close();
    noise1 = minim.loadFile("ufo.wav");
    FuelBar.sets();
    FuelBar.release();
    speedMeter.move();
    break;
    
    case 'a':
    FuelBar.sets();
    FuelBar.release();
    speedMeter.move();
    break;
  }
}

void radar() {
  fill(0, 5); //Changes the speed of the fadding stars
  rect(0, 0, width, height);
  fill(255);
  noStroke();
  ellipse(random(width), random(height), 2, 2);
  radar1.render();
  radar1.update();
}