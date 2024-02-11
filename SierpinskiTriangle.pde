public void setup()
{
  size(400,400);
  background(255, 230, 242);
  frameRate(3);
}
public void draw()
{
  fill(255, 153, 204);
  sierpinski(10, 10, 380);
}

public void sierpinski(int x, int y, int len)
{
  if(len <= 20) {
    triangle(x, y, x+len/2, y+len, x+len, y);  
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2),y, len/2);
    sierpinski(x+(len/4),y+(len/2), len/2);
  }
}
