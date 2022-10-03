int mod1 = -10;
int mod2 = 0;
int mod3 = 0;
int scroll = 0;
void setup () {
  size(310,210);
}

void draw () {
  color(255);
  fill(255);
  rect(10,10,90,40);
  rect(110,10,90,40);
  rect(210,10,90,40);
  rect(10,60,90,40);
  rect(210,60,90,40);
  rect(10,110,290,40);
  rect(10,160,90,40);
  rect(110,160,90,40);
  rect(210,160,90,40);
  //triangle arrows
  fill(0);
  triangle(85, 25, 95, 25, 90, 15);
  triangle(85, 35, 95, 35, 90, 45);
  //middle segment
  triangle(185, 25, 195, 25, 190, 15);
  triangle(185, 35, 195, 35, 190, 45);
  //right segment
  triangle(285, 25, 295, 25, 290, 15);
  triangle(285, 35, 295, 35, 290, 45);
  textSize(17.5);
  color(0,0,0);
  text("Mod1: " + mod1, 15, 35);
  text("Mod2: " + mod2, 115, 35);
  text("Mod3: " + mod3, 215, 35);
  text("CLEAR RESULTS AND INPUTS", 20, 135);
  
}
void mouseClicked() {
  //Generaly for reference
  if((mouseX > 10 && mouseX<80) && (mouseY > 10 && mouseY < 40)) {
    print("UL");
  }
  if ((mouseX > 110 && mouseX<180) && (mouseY > 10 && mouseY < 40)) {
    print("UC");
  }
  if((mouseX > 210 && mouseX<280) && (mouseY > 10 && mouseY < 40)) {\
  print("UR");
  }
  
  
  
  //Triangular thingies
  if((mouseX <= 95 && mouseX >= 85) && (mouseY >= 15 && mouseY <= 25)) {//top left top
    mod1 = mod1+1;
  }
 if((mouseX <= 95 && mouseX >= 85) && (mouseY >= 35 && mouseY <= 45)) {//top left top
    mod1 = mod1-1;
  }
  //center ones
  if((mouseX <= 195 && mouseX >= 185) && (mouseY >= 15 && mouseY <= 25)) {//top left top
    mod2 = mod2+1;
  }
  if((mouseX <= 195 && mouseX >= 185) && (mouseY >= 35 && mouseY <= 45)) {//top left top
    mod2 = mod2-1;
  }
  //right ones
  if((mouseX <= 295 && mouseX >= 285) && (mouseY >= 15 && mouseY <= 25)) {//top left top
    mod3 = mod3+1;
  }
  if((mouseX <= 295 && mouseX >= 285) && (mouseY >= 35 && mouseY <= 45)) {//top left top
    mod3 = mod3-1;
  }
  
  
  //
  
  
  
  //Debug
  println(mouseX + "," + mouseY);
}
