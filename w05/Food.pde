class Food {
  PVector cords;
  color foodColor;
  int type;
  int size;
  
  Food (int x, int y, int p) {
    cords = new PVector();
    cords.x = x;
    cords.y = y;
    type = p;
    foodColor();
  }//Constructor
  
  void foodColor() {
    if (type == KOI){
      foodColor = #B23212;
      size = 20;
    }
    if (type == GOLDFISH) {
      foodColor = #D8C285;
      size = 10;
    }
    if (type == TURTLE) {
      foodColor = #63CBA1;
      size = 35;
    }
  }
  
  void display() {
    fill(foodColor);
    circle(cords.x, cords.y, size);
  }
  
}//Food class
