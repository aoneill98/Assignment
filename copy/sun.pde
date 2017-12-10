// Gravitational Attraction (3D) 
// Daniel Shiffman <http://www.shiffman.net>

// A class for an attractive body in our world

class Sun {
  float mass;         // Mass, tied to size
  PVector position;   // position
  float G;            // Universal gravitational constant (arbitrary value)

  Sun() {
    position = new PVector(0, 0);
    mass = 20;
    G = 0.4;
  }

  // Draw Sun
  void display() {
    stroke(255);
    noFill();
    pushMatrix();
    translate(position.x, position.y, position.z);
    sphere(mass*2);
    popMatrix();
  }
}