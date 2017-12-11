Star[] stars = new Star[800];
float speed;
Speedo speedMeter;
Fuel FuelBar;
int count = 0;

void setup() {
  size(960, 636);
  radar1 = new Radar(width - width / 13, height - height / 10, 40, 0.5, color(0, 255, 0));
  stroke(255);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  speedMeter = new Speedo();
  FuelBar = new Fuel(count);
}

Radar radar1;

void draw() {
    radar();
    FuelBar.FuelSetup();
    FuelBar.bar();
    speedMeter.speedSetup();
    speedMeter.bar();
}

void keyPressed() {
  switch(key)
  {
    case 'w':
    speedMeter.speed();
    FuelBar.Fuelspeed();
    count = 1;
    FuelBar.bar();
    break;
  }
}

void keyReleased() {
  switch(key)
  {
    case 'w':
    speedMeter.count();
    count = 0;
    FuelBar.FuelSetup();
    FuelBar.count();
    FuelBar.bar();
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