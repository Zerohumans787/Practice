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
