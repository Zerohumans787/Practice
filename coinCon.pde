class Coin {
  boolean heads; //three member variables
  int myX, myY;


  Coin(int x, int y) //constructor
  {
    flip(); //initialize heads
    myX = x;
    myY
      = y;
  }
  void flip() {
    if (Math.random() > .85) {
      heads = true;
    } else {
      heads = false;
    }
  }
  void show() {
    noStroke();
    fill(255);
    ellipse(myX, myY, 50, 50) ;
    fill(0);
    if (heads == true) {
      text ("heads", myX, myY);
    } else {
      text ("tails", myX, myY);
    }
  }
}

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


