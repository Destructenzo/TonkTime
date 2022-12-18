public class bullet {
  int x; int y; String source;
  int time;
  
  bullet(int xi,int yi, String sourcei) {//Source to avoid friendly fire, may be really hard to implement
    x = xi; y=yi; source=sourcei; time = millis();
  }
  void display() {
    if (test == true) {
      
    }
    if (source == "P1") {
      image(PBulletSmall, x, y);
    } else {
      image(PBulletSmall, 50, 50);
    }if (test == true) {
      
    }
    if (source == "P1") {
      image(PBulletSmall, x, y);
    } else {
      image(PBulletSmall, x, y);
    }
    
    if (((millis() - time) == 5000) && source == "missile") {
      image(boomR, x, y);
    }
    
    
  }
}
