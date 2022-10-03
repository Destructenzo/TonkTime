public class bullet {
  int x; int y; String source;
  public bullet(int xi,int yi, String sourcei) {//Source to avoid friendly fire, may be really hard to implement
    x = xi; y=yi; source=sourcei;
  }
  void display() {
    if (source == "P1") {
      image(PBulletSmall, x, y);
    } else {
      image(PBulletSmall, 50, 50);
    }
  }
}
