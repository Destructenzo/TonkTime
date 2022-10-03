public boolean gameStart = true;
public ArrayList<bullet> bullets = new ArrayList<bullet>();
public player Player = new player(-100,-100, 1);
public color BC1 = color(0, 0, 0);
public color lineColor = color(200, 200, 0);
public boolean moveForward = false;
public boolean turnRight = false;
public boolean turnLeft = false;
public boolean moveBackward = false;
public int turn = 0; //0 is AI turn, 1 is P1, 2 is P2
public PImage PBulletSmall = loadImage("bulletR.jpgs");

void setup() {
    size(1000, 1000);
    background(0);
    
}

void draw() {
  if (gameStart == true) {
    fill(BC1);
    stroke(BC1);
    background(0);
    fill(255,255,255);
    stroke(255, 0,0);
    Player.x = 10;
    //grid lines
    strokeWeight(1);
    for (int i=0; i<20; i++) {
      fill(lineColor);
      stroke(lineColor);
      line(0, 50*i, 1000, 50*i);
      line(50*i, 0, 50*i, 1000);
    }
    //Borders
    rect(0,0,1000,50);
    rect(0, 950, 1000, 50);
    rect(0,0, 50, 1000);
    rect(950, 0, 50, 1000);
    
  } else if (gameStart == false) {
     
  }
}

//This whole setup controls input. It will "see" which key is pressed. It also sees you released one
void keyPressed() {
  if (keyCode == 38 || keyCode == 87) {  //Forward 
    moveForward = true;
  } else if (keyCode == 40 || keyCode == 83){ //backward
    moveBackward = true;
  } else if (keyCode == 37 || keyCode == 65){ //left
    turnLeft = true;
  } else if (keyCode == 39 || keyCode == 68){ ///right
    turnRight = true;
  }
  
}
void keyReleased() {
  moveForward = false;
  moveBackward = false;
  turnLeft = false;
  turnRight = false; 
}
