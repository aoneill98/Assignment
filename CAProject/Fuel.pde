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
    background(0);
    translate(width/2, height/2);
    for (int i = 0; i < stars.length; i++) {
      stars[i].update();
      stars[i].show();
    } 
    
    if (count == 2) {
      speed = 20;
      for (int i = 0; i < stars.length; i++) {
        stars[i].speedChange();
        stars[i].update();
        stars[i].show();
      }
    } 
    count = 1;
  }
  
  void sets() {
    speed = 50;
  }
  
  void sets1() {
    speed = 100;
  }
  
  void FuelSetup() {
    stroke(0, 255, 0);
    fill(255);
    rect(x1, y1, xlength, ylength, 0, 0, 40, 40);
    fill(0, 255, 0);
    text("FUEL GAUGE", 13, 500);
    fill(255);
    
    if (count == 1) {
      y2 = y2 + 0.4;
      
      if (y2 > ylength) {
        y2 = ylength;
      }
    }
    
    else {
      y2 =y2 + 0.035;
    }
    
    if (y2 > ylength) {
        y2 = ylength;
      }
  }
  
  void bar() {
    if (count == 1) {
      fill(0);
      rect(x1, y1, xlength, y2, 0, 0, 40, 40);
    }
    
    else {
      fill(0);
      rect(x1, y1, xlength, y2,  0, 0, 40, 40);
      text("FUEL GAUGE", 20, 880);
    }
  }
  
  void count() {
    count = 2;
  }
}