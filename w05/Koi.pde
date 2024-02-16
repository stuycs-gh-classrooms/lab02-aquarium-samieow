class Koi extends Animal {

  Koi (int x, int y) {
    super(x, y, int(int(random(1,3)) * pow(-1, int(random(2)))), int(int(random(1,3)) * pow(-1, int(random(2)))), 70, 40);
    img = loadImage("koi.png");
  }//Constructor
  
  void borderControl() {
    if (cords.x >= width - animalWidth || cords.x <= 0) {
      velocity.x *= -1;
    }
    if (cords.y >= height - animalHeight - floorH || cords.y <= tankY) {
      velocity.y *= -1;
    }
  }//Overridden borderControl 
  
  void flipImg() {
    if(cords.x >= width - animalWidth - 1) {
      img = loadImage("koi-left.png");
    }
    else if (cords.x <= 1) {
      img = loadImage("koi.png");
    }
  }
  
}// Koi fish
