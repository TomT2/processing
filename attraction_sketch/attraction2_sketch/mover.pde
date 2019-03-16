class Mover {
  float mass;
  PVector location;
  PVector velocity;
  PVector acceleration;

  Mover() {
    mass = 10;
    location = new PVector(400, 50);
    velocity = new PVector(1, 0);
    acceleration = new PVector(0, 0);
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void display() {
    stroke(2);
    fill(127);
    ellipse(location.x, location.y, mass * 2, mass * 2);
  }

  void update() {

    velocity.add(acceleration);
    location.add(velocity);

    acceleration.mult(0);
  }
}
