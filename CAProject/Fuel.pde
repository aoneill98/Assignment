class Fuel {
  float y2 = 0;
  int x1 = width/32;
  float y1 = height - height/5.2;
  float xlength = width/20;
  float ylength = height/6;
  int count;
  
  Fuel(int count) {
    this.count = count;
  }
  
  void Fuelspeed() {
    speed = 100;
    background(0);
    translate(width/2, height/2);
    for (int i = 0; i < stars.length; i++) {
      stars[i].update();
      stars[i].show();
    } 
    count = 1;
  }
  
  void FuelSetup() {
    stroke(0, 255, 0);
    fill(255);
    rect(x1, y1, xlength, ylength);
    fill(255);
    
    if (count == 1) {
      y2 = y2 + 0.4;
      
      if (y2 > ylength) {
        y2 = ylength;
      }
    }
    
    else {
      y2 =y2 + 0.05;
    }
  }
  
  void bar() {
    if (count == 1) {
      fill(0);
      rect(x1, y1, xlength, y2);
    }
    
    else {
      fill(0);
      rect(x1, y1, xlength, y2);
    }
  }
  
  void count() {
    count = 0;
  }
}