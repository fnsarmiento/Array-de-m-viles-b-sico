class Movil {
  PVector pos;
  PVector dir = new PVector(1, 1);
  float vel = 1.0f;
  float tamano = 10;

  Movil() {
    pos = new PVector(random(width), random(height));
  }

  Movil(float posX, float posY) {
    pos = new PVector(posX, posY);
  }

  Movil(float posX, float posY, float dirX, float dirY) {
    pos = new PVector(posX, posY);
    dir = new PVector(dirX, dirY).normalize();
  }

  void mover() {
    PVector velocidad = PVector.mult(dir, vel);
    pos.add(velocidad);
  }

  void contener() {
    float radio = tamano / 2;
    
    if (pos.x < radio || pos.x > width - radio) {
      dir.x *= -1;
    }
    if (pos.y < radio || pos.y > height - radio) {
      dir.y *= -1;
    }
  }

  void display() {
    fill(150, 200, 255);
    stroke(255);
    strokeWeight(2);
    circle(pos.x, pos.y, tamano);
  }
}
