
float angle = 0;
float aVelocity = 0;
float aAcceleration = 0.001;

void setup() {
  size(480, 360);
}

void draw() {
  background(255);
  
  fill(175);
  rectMode(CENTER);
  translate(width/2, height/2);
  rotate(angle);
  stroke(0);
  strokeWeight(2);
  line (-50, 0, 50, 0);
  fill(127);
  ellipse(-50, 0 , 20, 20);
  ellipse(50,0, 20,20);
  
  aVelocity += aAcceleration;
  angle += aVelocity;
}
