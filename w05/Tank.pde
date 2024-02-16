class Tank {

  int tx;
  int ty;
  int tw;
  int th;
  int fh;
  
  ArrayList<Animal> animals;
  ArrayList<Food> food;
  
  Tank (int x, int y, int w, int h, int hh){
    tx = x;
    ty = y;
    tw = w;
    th = h;
    fh = hh;
    animals = new ArrayList<Animal>();
    food = new ArrayList<Food>();
  }
  
  void display(){
    noStroke();
    fill(#A7E7FA);
    rect(tx, ty, tw, th);
    fill(#E5D2B9);
    rect(tx, width - fh, tw, th);
    fill(#A1C96E);
    
    overPopulation();
    for (int p = 0; p < food.size(); p++) {
      food.get(p).display();
    }
    for (int p = 0; p < animals.size(); p++) {
      animals.get(p).display();
    }
  }
  
  void moveAnimals() {
    for (int p = 0; p < animals.size(); p++) {
      animals.get(p).move();
    }
  }
  
  void addAnimal(int x, int y) {
    int randomizer = (int)random(3);
    if (randomizer == 0) {
      animals.add(new Turtle(x, y));
    }
    else if (randomizer == 1) {
      animals.add(new Koi(x, y));
    }
    else {
      animals.add(new Goldfish(x, y));
    }
  }
  
  void addAnimalSpecific(int x, int y, int p){
    if (p == KOI) {
      animals.add(new Koi(x, y));
    }
    if (p == GOLDFISH) {
      animals.add(new Goldfish(x, y));
    }
    if (p == TURTLE) {
      animals.add(new Turtle(x, y));
    }
  }
  
  void overPopulation() {
    if (animals.size() > 20) {
      int p = int(random(animals.size()));
      animals.remove(p);
    }
  }
  
  void addFood(int x, int y, int type) {
    food.add(new Food(x, y, type));
  }
  
  /*void eating() {
    if(
  }*/
  
  
}//Tank Class
