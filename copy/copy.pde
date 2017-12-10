Star[] stars = new Star[800];
float speed;
Sun s;
Speedo speedMeter;
// An angle to rotate around the scene
float angle = 0;
int count = 1; 
 
void setup() {
  size(960, 636, P3D);
  s = new Sun();
  radar1 = new Radar(width - width / 13, height - height / 10, 40, 0.5, color(0, 255, 0));
  stroke(255);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  speedMeter = new Speedo();
}

Radar radar1;

void draw() {
    radar();
    speedMeter.speedSetup();
    speedMeter.bar();
    if (count == 1) {
      sphere();
    }
}

void keyPressed() {
  switch(key)
  {
    case 'w':
    speedMeter.speed();
    count = 0;
    break;
  }
}

void keyReleased() {
  switch(key)
  {
    case 'w':
    speedMeter.count();
    count = 1;
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

void sphere() {
  sphereDetail(8);
  translate(width/2, height/2);
  rotateY(angle);
  // Display the Sun
  s.display();
  translate(width, height);
  // Rotate around
  angle += 0.003;
}