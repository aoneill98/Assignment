class Fuel {
  float y2 = 0;
  int x1 = width/32;
  float y1 = height - height/5.2;
  float xlength = width/20;
  float ylength = height/6;
  int count;
  int move = 0;
  int release;
  float dialx = 215;
  float dialy = 628;
  Fuel(int count) {
    this.count = count;
  }
  
  void Fuelspeed() {
    if (move != 1) {
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
      
      if (count == 3) {
        speed = 20;
        for (int i = 0; i < stars.length; i++) {
          stars[i].speedChange();
          stars[i].update();
          stars[i].show();
        }
      } 
    }
  }
  
  void sets() {
    speed = 40;
    count = 1;
  }
  
  void sets1() {
    speed = 80;
    count = 2;
  }
  
  void sets2() {
    speed = 200;
    count = 3;
  }
  
  void FuelSetup() {
    stroke(0, 255, 0);
    fill(0);
    rect(x1, y1, xlength, ylength, 0, 0, 40, 40);
    fill(0, 255, 0);
    textSize(14);
    text("FUEL GAUGE", 13, 500);
    stroke(255);
    line(320, 636, dialx, dialy);
    stroke(0, 255, 0);
    
    if (move != 1) { 
      fill(255);
      rect(x1, y1, xlength, ylength, 0, 0, 40, 40);
      
      if (count == 3) {
        y2 = y2 + 0.3;
        
        if (y2 > ylength) {
          y2 = ylength;
          move = 1;
        }
        
        if (dialx < 380) {
            dialx = dialx + 1;
          }
          
          if (dialy <= 550) {
             dialy = dialy + 8;
          }
          
          if (dialx >= 215 && dialy > 550) {
            dialy = dialy - 1.2;
          }
      }
      
      if (count == 2) {
        y2 = y2 + 0.15;
        
        if (y2 > ylength) {
          y2 = ylength;
          move = 1;
        }
        
        if (dialx < 380) {
            dialx = dialx + 0.5;
          }
          
          if (dialy <= 550) {
             dialy = dialy + 8;
          }
          
          if (dialx >= 215 && dialy > 550) {
            dialy = dialy - 0.6;
          }
      }
      
      if (count == 1) {
        y2 = y2 + 0.075;
        
        if (y2 > ylength) {
          y2 = ylength;
          move = 1;
        }
        
        if (dialx < 380) {
            dialx = dialx + 0.25;
          }
          
          if (dialy <= 550) {
             dialy = dialy + 8;
          }
          
          if (dialx >= 215 && dialy > 550) {
            dialy = dialy - 0.3;
          }
      }
       
    }
    
    else {
      textSize(50);
      text("YOU ARE OUT OF FUEL!", 197, 310);
      textSize(20);
      fill(255, 0, 0);
      text("Press spacebar to refuel", 367, 360);
    }
  }
  
  void release() {
    dialx = 215;
    dialy = 628;
    release = 0;
  }
  
  void bar() {
    if (move != 1) {
      fill(0);
      rect(x1, y1, xlength, y2,  0, 0, 40, 40);
    }
  }
  
  void count() {
    count = 1;
  }
  
  void count2() {
    count = 3;
  }
  
  void reFuel() {
    move = 0;
    y2 = 0;
  }
}