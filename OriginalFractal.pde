public void setup() {
  size(500, 500);
  ellipseMode(CENTER);
}
public void draw() {
  background(0);
  fill(0);
  myFractal(250, 250, 500);
  noLoop();
}
public void myFractal(int x, int y, int size) {
  //draw a rectangle centered at (x,y) of size
  ellipse(x, y, size, size + 10);
    fill((float)Math.random()*255,0, (float)Math.random()*255);
  //fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
  if (size >= 50) {
    myFractal( x - (size/2) , y, size/2 );
    myFractal( x + (size/2) , y, size/2 );
    myFractal( x, y - (size/2) , size/2 );
    myFractal( x, y + (size/2) , size/2 );

  }
}
