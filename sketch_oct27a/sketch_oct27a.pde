Mover[] movers = new Mover[100];

void setup() {
  size(800, 800);
  background(0);
  smooth();
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0.1,5),0,0);
  }
}

void draw() {
  //noStroke();
  //fill(0,10);
  //rect(0,0,width,height);
  
  PVector wind = new PVector(0.001,0);
  PVector gravity = new PVector(0,0.1);
  
  for (int i = 0; i < movers.length; i++) {
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);
    
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }
}


