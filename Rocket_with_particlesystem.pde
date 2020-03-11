ParticleSystem ps;
Rocket r;
void setup() {
  size(800, 800);
  ps = new ParticleSystem(new PVector(400, 600));
  r = new Rocket(loadImage("yuckyrocket.png"));
}

void draw() {
  background(0);
  ps.addParticle(new PVector(r._pos.x, r._pos.y+150));
  ps.run();
  r.run();
}
