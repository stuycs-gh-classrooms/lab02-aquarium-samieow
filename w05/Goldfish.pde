class Goldfish extends Animal {
  
  
  
  Goldfish(int x, int y){
    super(x, y, int(int(random(2,4)) * pow(-1, int(random(2)))), int(int(random(2,4)) * pow(-1, int(random(2)))), 45, 35);
    img = loadImage("goldfish.png");
  }
  
  void borderControl() {
    if (cords.x >= width - animalWidth || cords.x <= 0) {
      velocity.x *= -1;
    }
    if (cords.y >= height - animalHeight - floorH || cords.y <= tankY) {
      velocity.y *= -1;
    }
  }  
  
  void flipImg() {
    if(cords.x >= width - animalWidth - 1) {
      img = loadImage("goldfish.png");
    }
    else if (cords.x <= 1) {
      img = loadImage("goldfish-right.png");
    }
  }
  
  
}// Goldfish Class
