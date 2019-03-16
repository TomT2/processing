Ball b;

void setup() {
 size(480,360);
 b = new Ball();
}

void draw () {
  background (255);
  b.move();
  b.bounce();
  b.display();
  
}
