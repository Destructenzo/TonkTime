public class player {
  int x = 100; int y=200; int hp=1; int direction = 0; int Xc = 0; int Yc = 0; int velocity = 0; int speedBuff = 0;
  public player(int xi, int yi, int health) {
      hp = health;
      x = round(xi);
      y = round(yi);
  }
  void display() {
    fill(255);
    rect(x,y,25*scale,25*scale);
    image(playerTonkSprite.get(1), x, y);
  }
  
  void movement() {
    if (y >= 25*scale && y >= height-25*scale && x <= 25*scale && x <= width-25*scale) {
      
      moveBackward = false;
    } else if (moveForward == true) {
      if (velocity <= 10*scale) {
        velocity = velocity+(1*scale)+(speedBuff*scale);;
      }
    } else if (moveBackward == true) {
      if (velocity >= -10*scale) {
        velocity = velocity-(1*scale)-(speedBuff*scale);;
      }
    }
    
    
  }
}
