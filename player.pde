public class player {
  int x = 0; int y=0; int hp=1; int direction = 0; int Xc = 0; int Yc = 0;
  public player(int xi, int yi, int health) {
      hp = health;
      x = round(xi);
      y = round(yi);
  }
  void display() {
    fill(255);
    rect(x,y,45,45);
    image(playerTonkSprite.get(1), x, y);
  }
  
  void movement() {
    if (x >= width-25*scale) {
      moveForward = false;
      moveBackward = false;
    }
    
    if (x <= 25*scale) {
      moveForward = false;
      moveBackward = false;
    }
    
  }
}
