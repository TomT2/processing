
class Attractor {

  float mass;
  PVector location;
  float G;
  
  Attractor () {
  location = new PVector(width/2, height/2);
  mass = 20;
  G = 0.4;
 // dragOffset = new PVector(0.0, 0.0);
  }
  

PVector attract (Mover m) {
  
  //Direction of the force
  PVector force = PVector.sub(location, m.location); //What's the forces direction?
  float d = force.mag();
  d = constrain(d,5.0,25.0);
  
  
  force.normalize();
  
  //magnitude of the force
  float strength = (G * mass * m.mass)/(d*d);
  
  //Putting magnitude and direction together
  force.mult(strength);
  
  return force;
  }
  
//Method of display
void display() {
 ellipseMode (CENTER); 
  strokeWeight(4);
  stroke(0);
  if (dragging) fill (50);
  else if (rollover) fill (100);
  else fill(175,200);
  ellipse(location.x,location.y,mass*2,mass*2);
 }
 
}
