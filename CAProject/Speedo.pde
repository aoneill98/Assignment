class Speedo {
  
  float x2 = 0;
  int x1 = width - width/7;
  int y1 = height/27;
  float xlength = width/7.5;
  float ylength = height/16;
  int count = 0;
  
  void speed() {
    speed = 100;
    background(0);
    translate(width/2, height/2);
    for (int i = 0; i < stars.length; i++) {w
    } 
    count = 1;
  }
  
  void speedSetup() {
    stroke(0, 255, 0);
    fill(0);
    rect(x1, y1, xlength, ylength);
    fill(255);
    
    if (count == 1) {
      x2 = x2 + 1;
      
      if (x2 > xlength) {
        x2 = xlength;
      }
    }
    
    if (count == 2) {
      x2 = x2 - 1;
      
      if (x2 < 0) {
        x2 = 0;
      }
    }
  }
  
  void bar() {
     rect(x1, y1, x2, ylength);
  }
  
  void count() {
    count = 2;
  }
}