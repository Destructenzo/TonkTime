public class player {
  int x= 0;int y=0; int hp=1; int direction = 1;
  public player(float xi, float yi, int health) {
      hp = health;
      x=round(xi);
      y=round(yi);
  }
  public void display() {
    rect(x,y,45,45);
  }
}
