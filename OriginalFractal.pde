public void setup()
{
  size(800,800);
}
public void draw()
{
  background(0);
  myFractal(400,400,780);
}
public void myFractal(int x, int y, int siz)
{
  triangle(x-siz/2,y+siz/2,x+siz/2,y+siz/2,x,y-siz/2);

}