Movil[] moviles;
int cantidad = 20;

void setup() {
  size(800, 600);
  moviles = new Movil[cantidad];
  
  float espacio = width / (float)(cantidad + 1);
  
  for (int i = 0; i < cantidad; i++) {
    float posX = espacio * (i + 1);
    float posY = height / 2;
    
    moviles[i] = new Movil(posX, posY);
    moviles[i].vel = random(0.5, 5);
  }
}

void draw() {
  background(30);
  
  for (int i = 0; i < moviles.length; i++) {
    moviles[i].mover();
    moviles[i].contener();
    moviles[i].display();
  }
}
