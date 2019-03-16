class Mover {
  
 PVector location;
 PVector velocity;
 PVector acceleration;
 float mass;
 
 Mover(float m, float x, float y) {
  mass = m;
  location = new PVector(random(width),random(height));
  velocity = new PVector(1,0);
  acceleration = new PVector(0,0);
  }
 
 void applyForce(PVector force) {
  PVector f = PVector.div(force, mass);
  acceleration.add(f);
  }
 
}
