Movil[] moviles;

int columnas = 10;
int filas = 6;

void setup() {
  size(800, 600);
  
  int totalMoviles = columnas * filas;
  moviles = new Movil[totalMoviles];
  
  float anchoCelda = width / (float)columnas;
  float altoCelda = height / (float)filas;
  
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      float posX = (i * anchoCelda) + (anchoCelda / 2);
      float posY = (j * altoCelda) + (altoCelda / 2);
      
      float dirX = random(-1, 1);
      float dirY = random(-1, 1);
            
      int idx = i + (j * columnas);
      
      moviles[idx] = new Movil(posX, posY, dirX, dirY);
      moviles[idx].vel = random(0.5, 5);
    }
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
