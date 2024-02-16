Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;

int KOI = 1;
int GOLDFISH = 2;
int TURTLE = 3;


void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
}

void mouseClicked() {
  t.addAnimal(mouseX, mouseY); // random animal
}

void keyPressed() {
  if (key == 'q') {
    t.addFood(mouseX, mouseY, KOI);
  }
  if (key == 'w') {
    t.addFood(mouseX, mouseY, GOLDFISH);
  }
  if (key == 'e') {
    t.addFood(mouseX, mouseY, TURTLE);
  }
  if (key == 'a'){
    t.addAnimalSpecific(mouseX, mouseY, KOI);
  }
  if (key == 's') {
    t.addAnimalSpecific(mouseX, mouseY, GOLDFISH);
  }
  if (key == 'd') {
    t.addAnimalSpecific(mouseX, mouseY, TURTLE);
  }
}
