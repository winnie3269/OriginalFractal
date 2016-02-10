PImage img;
public void setup()
{
  size(800,800);
  img=loadImage("gradient.png");
}
public void draw()
{
  background(img);
  noStroke();
  myFractal(400,400,780);
}
public void myFractal(int x, int y, int r)
{
 ellipse(x,y,r,r);
  if (r>25)
  {
    pushMatrix();
    stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    myFractal(x,y,r/2);
    myFractal(x+r/2,y,r/2);
    myFractal(x-r/2,y,r/2);
    myFractal(x,y+r/2,r/2);
    popMatrix();
  }
}