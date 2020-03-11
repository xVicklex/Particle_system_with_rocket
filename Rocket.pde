class Rocket
{
  PImage yuckyrocket;
  PVector _pos;
  PVector _vel;

  Rocket(PImage _IMG)
  {

    yuckyrocket = _IMG;
    _pos=new PVector(400, 400);
    _vel = new PVector(0, 0);
  }


  void Update()
  {

    _vel.x=(mouseX-400)/70;
    _vel.y=(mouseY-400)/70;

    imageMode(CENTER);
    image(yuckyrocket, _pos.x, _pos.y, 300, 300);
    _pos.x += _vel.x;
    _pos.y += _vel.y;
  }

  void run()
  {
    Update();
  }
}
