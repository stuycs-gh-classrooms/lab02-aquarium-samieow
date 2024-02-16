class Turtle extends Animal {
  Turtle(int x, int y){
    super(x, y, int(1 * pow(-1, int(random(2)))), 0, 80, 80);
    if (velocity.x == 1) {
      img = loadImage("turtle-right.png");
    }
    else {
      img = loadImage("turtle-left.png");
    }
  }
  
  void borderControl() {
    if (cords.x >= width - animalWidth || cords.x <= 0) {
      velocity.x *= -1;
    }
    if (cords.y < height - animalHeight) {
      velocity.y = +1;
    }
    else {
      velocity.y = 0;
    }
  }//Overridden borderControl
  
  void flipImg() {
    if(cords.x >= width - animalWidth - 1) {
      img = loadImage("turtle-left.png");
    }
    else if (cords.x <= 1) {
      img = loadImage("turtle-right.png");
    }
  }
  
}//Turtles <3
