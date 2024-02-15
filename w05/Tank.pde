class Tank {

  int tx;
  int ty;
  int tw;
  int th;
  int fh;
  
  ArrayList<Animal> animals;
  
  Tank (int x, int y, int w, int h, int hh){
    tx = x;
    ty = y;
    tw = w;
    th = h;
    fh = hh;
    animals = new ArrayList<Animal>();
  }
  
  void display(){
    noStroke();
    fill(#A7E7FA);
    rect(tx, ty, tw, th);
    fill(#E5D2B9);
    rect(tx, width - fh, tw, th);
    fill(#A1C96E);
    
    for (int p = 0; p < animals.size(); p++){
      animals.get(p).display();
    }
  }
  
  void moveAnimals() {
    for (int p = 0; p < animals.size(); p++) {
      animals.get(p).move();
    }
  }
  
  void addAnimal(int x, int y) {
  int vx = int(2 * pow(-1, int(random(2, 4))));
  int vy = int(2 * pow(-1, int(random(2, 4))));
  animals.add(new Koi(x, y, vx, vy, 70, 40));
  }
  
  
}//Tank Class
