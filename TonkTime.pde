public boolean gameStart = true;
public ArrayList<bullet> bullets = new ArrayList<bullet>();
public player Player = new player(100,100, 1);
public color BC1 = color(0, 0, 0);
public color lineColor = color(75, 139, 0);
public boolean moveForward = false;
public boolean turnRight = false;
public boolean turnLeft = false;
public boolean moveBackward = false;
public int turn = 0; //0 is AI turn, 1 is P1, 2 is P2
public PImage PBulletSmall, boomR1;
public int scale = 1; //1x scale = 500x500. 2x scale = 1000x1000
public boolean test = true; //FIX LATER
public ArrayList<PImage> playerTonkSprite = new ArrayList<PImage>();
public player tonk = new player(100, 100, 1);
void setup() {
  //Size needs to be changed to 500*scale. 
  size(500, 500);
  loadPics();
  translate(CENTER, CENTER);
  frameRate(20);
}


void draw() {
  width = 500*scale;
  height = 500*scale;
  if (gameStart == true) {
    fill(BC1);
    stroke(BC1);
    background(153);
    fill(255,255,255);
    stroke(255, 0,0);
    Player.x = 10;
    //grid lines
    strokeWeight(1);
    for (int i=0; i<20; i++) {
      fill(lineColor);
      stroke(lineColor);
      line(0, 25*scale*i, 5000, 25*scale*i);
      line(scale*25*i, 0, 25*scale*i, 1000);
    }
    
    //Borders
    rect(0,0, 500*scale, 25*scale);
    rect(0, (500*scale-scale*25), 1000, 25*scale);
    rect(0,0, 25*scale, 500*scale);
    rect((500*scale-scale*25), 0, 25*scale, 1000);
    //FUNCTIONS
    tonk.movement();
    tonk.display();
    direction();
  } else if (gameStart == false) {
     
  }
  
  bullets.add(new bullet(50,50, "missile"));
  
  
  for (int i = 0; i <= (bullets.size()-1); ++i) {
    bullets.get(i).display();
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

public void loadPics() {
  PBulletSmall = loadImage("bulletRB.png");
  boomR1 = loadImage("boomR-1.gif");
  playerTonkSprite.add(loadImage("greenTonkU.png"));
  playerTonkSprite.add(loadImage("greyTonkU.png"));
}

public void direction() {
  fill(0,0,0);
  rect(width-(20*scale), 100*scale, 20*scale-5*scale, 250*scale);
}
