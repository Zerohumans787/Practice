
int x = 50;
float numCoins=0;
float numHeads =0;
float percHeads = 0.0;

void setup()
{

  size(500, 300);
  textAlign(CENTER);
  noLoop();
}
void draw()
{

  while (x < 500) {
    Coin bob = new Coin(x, 150);
    bob.show();
    x=x+60;
    numCoins++;
    if (bob.heads==true) {
      numHeads++;
      percHeads= int((numHeads/numCoins)*100);
    }
  }
  x= 50;
}
void mousePressed()
{
  redraw();
  System.out.print(percHeads);
  System.out.println('%');
}
