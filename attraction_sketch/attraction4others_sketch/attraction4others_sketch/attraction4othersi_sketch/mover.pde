class Mover {
  float mass;
  PVector location;
  PVector velocity;
  PVector acceleration;
  float g;

  Mover(float m, float x, float y) {
    mass = m;
    location = new PVector(x, y);
    velocity = new PVector(1, 0);
    acceleration = new PVector(0, 0);
    g = 0.4;
  }

  PVector attract(Mover m) {
    PVector force = PVector.sub(location, m.location);
    float distance = force.mag();
    distance = constrain(distance, 5, 25.0);

    force.normalize();
    float strength = (g * mass * m.mass) / (distance * distance);
    force.mult(strength);
    return force;
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
