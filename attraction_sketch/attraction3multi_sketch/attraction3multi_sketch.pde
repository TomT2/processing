
Mover[] movers = new Mover[3];
Attractor a;

void setup() {
  size(640, 360);
  smooth();

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(10, random(width), random(height));
  }
    a = new Attractor();
 }

  void draw() {
    background(255);

    for (int i =0; i < movers.length; i++) {
    PVector force = a.attract(movers[i]);
    movers[i].applyForce(force);
    movers[i].update();

    a.display();
    movers[i].display();
    }
  }
