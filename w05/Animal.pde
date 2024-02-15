class Animal {
  PVector cords;
  PVector velocity;
  int animalWidth;
  int animalHeight;
  PImage img;
  
  Animal (int x, int y, int vx, int vy, int sw, int sh) {
    if (spawnArea(x, y)) {
      cords = new PVector(x, y);
    }
    velocity = new PVector(vx, vy);
    animalWidth = sw;
    animalHeight = sh;
  }
  
  void move() {
    borderControl();
    cords.x += velocity.x;
    cords.y += velocity.y;
  }
  
  void borderControl() {
    if (cords.x >= width - animalWidth || cords.x <= 0) {
      velocity.x *= -1;
    }
    if (cords.y >= height - animalHeight || cords.y <= tankY) {
      velocity.y *= -1;
    }
  }
  
  boolean spawnArea(int x, int y){
    if(x >= 0 && x <= width - animalWidth && y >= tankY && y <= height - animalHeight){
      return true;
    }
    else {
      return false;
    }
  }
  
  void display() {
    if (img != null) {
      image(img, cords.x, cords.y, animalWidth, animalHeight);
    }
  }
  
} // animal class
