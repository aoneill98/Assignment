class Speedo {
  
  float x2 = 0;
  int x1 = width - width/7;
  int y1 = height/27;
  float xlength = width/7.5;
  float ylength = height/16;
  int count;
  int move = 0;
  
  void speed() {
    speed = 100;
    background(0);
    translate(width/2, height/2);
    for (int i = 0; i < stars.length; i++) {
      stars[i].update();
      stars[i].show();
    } 
  }
  
  void speedSetup() {
    fill(15);
    quad(55, 960, 200, 535, 727, 535, 940, 960);
    fill(100);
    ellipse(320, 650, 245, 220);
    ellipse(600, 650, 245, 220);
    
    fill(0, 255, 0);
    textSize(14);
    text("SPEEDOMETER", 841, 79);
    stroke(0, 255, 0);
    fill(0);
    rect(x1, y1, xlength, ylength);
    fill(255);

    if (count == 1 && move != 1) {
      x2 = x2 + 0.25;
      
      if (x2 > xlength) {
        x2 = xlength;
      }
    }
    
    if (count == 2 && move != 1) {
      x2 = x2 - 0.5;
      
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
  
  void count2() {
    move = 0;
    count = 1;
  }
  
  void move() {
    x1 = width - width/7;
    y1 = height/27;
    x2 = 0;
    ylength = height/16;
    move = 1;
  }
 }