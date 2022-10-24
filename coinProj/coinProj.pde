void setup()
{

  size(500, 300);
  textAlign(CENTER);
  noLoop();
}
void draw()
{
  Coin bob = new Coin(50,150);
  bob.show();

}
void mousePressed()
{
  redraw();
}
