Particle[] one;
void setup()
{
  background(250);
  size(700, 700);
  one = new Particle [500];
  for(int i = 0; i < one.length; i++){
    one [i] = new Particle();
    one[0] = new OddballParticle();
  }
}
void draw()
{
  for(int i = 0; i < one.length; i++){
    one[i].show();
    one[i].move();
  }
}
class Particle
{
  double speed, angle, siz, myX, myY;
  int r, g, b;
  Particle(){
    myX = 350;
    myY = 350;
    speed = 1;
    angle = Math.random()*2*Math.PI;
    r = (int)(Math.random()*255)+2;
    g = (int)(Math.random()*255)+2;
    b = (int)(Math.random()*255)+2;
    siz = 1;
  }
  void move(){
    myX = myX+(Math.cos(angle))*speed;
    myY = myY+(Math.sin(angle))*speed;
    siz = siz*1.1;
    speed = speed*1.1;
  }
  void show(){
    fill(r, g, b);
    ellipse((float)myX, (float)myY, (float)siz, (float)siz);
  }
}
class OddballParticle extends Particle
{
  OddballParticle(){
    myX = 350;
    myY = 350;
    speed = 1;
    angle = Math.random()*2*Math.PI;
    siz = 1;
  }
  void move(){
    myX = myX+(Math.cos(angle))*speed;
    myY = myY+(Math.sin(angle))*speed;
    siz = siz*1.1;
    speed = speed*1.1;
  }
  void show(){
    fill(0, 0, 0);
    rect((float)myX, (float)myY, (float)siz, (float)siz);
  }
}
