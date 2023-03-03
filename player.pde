public class player {
  float x = 100; float y=200; int hp=1; float direction = 0; int Xc = 0; int Yc = 0; int velocity = 0; int speedBuff = 0; int hue = 0;
  public player(int xi, int yi, int health) {
      hp = health;
      x = round(xi);
      y = round(yi);
  }
  void display() {
    Xc = int(x+10);
    Yc = int(y+10);
    fill(255);
    translate(Xc,Yc); //Adjusts origin, rotates, reverts. This is lunacy, not lycanthropy
    rotate(radians(direction));
    image(playerTonkSprite.get(hue), -5, -5);
    rotate(-1*radians(direction));
    translate(-Xc,-Yc);
  }
  
  void movement() {
    if (y >= 25*scale && y >= height-25*scale && x <= 25*scale && x <= width-25*scale) {
      velocity = velocity*-1;
      moveBackward = true;
    } else if (moveForward == true) {
      if (velocity <= 10*scale) {
        velocity = velocity+(1*scale)+(speedBuff*scale);;
      }
    } else if (moveBackward == true) {
      if (velocity >= -5*scale) {
        velocity = velocity-(1*scale)-(speedBuff*scale);;
      }
    }
    if (turnLeft == true) {
      direction = direction-5;
      turnLeft = false;
    }
    if (turnRight == true) {
      direction = direction+5;
      turnRight = false;
    }
    //MOTION
    if (direction >= 360) {
      direction = 0;
    } //Border collision. A messy success. 
    if (!(x <= 25*scale)) { 
      if (!(x+25 >= width-25*scale)) {
        if (!(y <= 25*scale)) {
          if (!(y+25 >= height-25*scale)) {
            x = x + (velocity * (cos(radians(direction))) + speedBuff);
            y = y + (velocity * (sin(radians(direction))) + speedBuff);
          } else {y--;}
        } else {y++;  }
      } else { x--;  }
    } else { x++;  }
  }
}
