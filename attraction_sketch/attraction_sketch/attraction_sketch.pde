Mover m;
Attractor a;

void setup() {
  size(640, 360);
  m = new Mover();
  a = new Attractor();
}

void draw() {
  background(255);

  PVector force = a.attract(m);
    m.applyForce(f);
    m.update();

    a.drag();
    a.hover(mouseX, mouseY);

    a.display();
    m.display();
}


void mousePressed() {
  a.clicked(mouseX, mouseY);
}

void mouseReleased() {
  a.stopDragging();
}
