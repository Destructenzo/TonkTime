int mod1 = -1;
int mod2 = 0;
int mod3 = 1;
int con = 0;

int screenScroll = 0;
int scroll = 0;
int Rscroll = 0;

int Hroll1;
int Hroll2;
int Hroll3;

int Proll1;
int Proll2;
int Proll3;

int sucesses = 0;

void setup () {
  size(310,210);
}

void draw () {
  background(180);
  if (screenScroll == 0) {
    color(255);
    fill(255);
    rect(10,10,65,40);
    rect(85,10,65,40);
    rect(160,10,65,40);
    rect(235, 10, 65,40);
    rect(10,60,90,40);
    rect(210,60,90,40);
    rect(10,110,290,40);
    rect(10,160,90,40);
    rect(110,160,90,40);
    rect(210,160,90,40);
    rect(110, 60, 90, 15);
    //triangle arrows
    fill(0);
    triangle(60, 25, 70, 25, 65, 15);
    triangle(60, 35, 70, 35, 65, 45);
    //middle segment
    triangle(135, 25, 145, 25, 140, 15);
    triangle(135, 35, 145, 35, 140, 45);
    //right segment
    triangle(210, 25, 220, 25, 215, 15);
    triangle(210, 35, 220, 35, 215, 45);
    //Constitution 
    triangle(285, 25, 295, 25, 290, 15);
    triangle(285, 35, 295, 35, 290, 45);
    //All the text
    textSize(12.5);
    color(0,0,0);
    text("Scroll Rolls", 130, 72);
    text("Mod1: " + mod1, 15, 35);
    text("Mod2: " + mod2, 90, 35);
    text("Mod3: " + mod3, 165, 35);
    text("Con: 1d" + con, 240, 27.5);
    text("DC: " + con, 240, 42.5);
    textSize(15);
    text("Scroll Through Different Screens", 20, 135);
    text("SCROLL", 225, 185);
    text("Wins: " + sucesses, 125,90);
    //Scrollable text
    //Bottom row
    
    if (scroll == 0) {
      text("Gambling", 20, 185);
      text("Pit Fighting", 120, 185);
    } else if (scroll == 1) {
      text("Work", 20, 185);
      text("Just...Crime", 120, 185);
    }
    //URUURUGHGUHOISAD SCROLLABLE RESULTS
    if (Rscroll == 0) {
      text("You got: " + Proll1, 20,90);
      text("They got: " + Hroll1, 220,90);
    } else if (Rscroll == 1) {
      text("You got: " + Proll2, 20,90);
      text("They got: " + Hroll2, 220,90);
    } else if (Rscroll == 2) {
      text("You got: " + Proll3, 20,90);
      text("They got: " + Hroll3, 220,90);
    }
  } else if (screenScroll == 1) {
    fill(255);
    rect(10,160,290,40);
    fill(0);
    text("Scroll Through Different Screens", 30, 190);
    text("Gambling: ", 120, 20);
    line(10,25,290,25);
    line(10,50,290,50);
    line(10,75,290,75);
    line(10,100,290,100);
    line(10,125,290,125);
    line(10,150,290,150);
    line(10,25,10,150);
    line(290,25,290,150);
    line(30,25,30,125);
    text("0", 15, 40);
    text("1", 15, 65);
    text("2", 15, 90);
    text("3", 15, 115);
    text("Owe the amount you gambled: -100%", 40,40);
    text("Lose half the amount you gambled: 50%", 40,65);
    text("Gain half amount you gambled: 150%", 40,90);
    text("Gain the amount you gambled: 200%", 40,115);
    line(106, 125, 106, 150);
    line(212, 125, 212, 150);
    text("Insight (Wis)", 20, 145);
    text("Deception (Cha)", 110, 145);
    text("Intim. (Cha)", 217, 145);
  } else if (screenScroll == 2) {
    fill(255);
    rect(10,160,290,40);
    fill(0);
    text("Pit Fighting: ", 120, 20);
    line(10,25,290,25);
    line(10,50,290,50);
    line(10,75,290,75);
    line(10,100,290,100);
    line(10,125,290,125);
    line(10,150,290,150);
    line(10,25,10,150);
    line(290,25,290,150);
    line(30,25,30,125);
    text("0", 15, 40);
    text("1", 15, 65);
    text("2", 15, 90);
    text("3", 15, 115);
    text("Gain nothing", 40,40);
    text("Gain 50 gold", 40,65);
    text("Gain 100 gold", 40,90);
    text("Gain 200 gold", 40,115);
    line(106, 125, 106, 150);
    line(212, 125, 212, 150);
    text("Athletics (Str)", 20, 145);
    text("Acrobatics (Dex)", 110, 145);
    text("Hit Die+Con", 215, 145);
    text("Scroll Through Different Screens", 30, 190);
  } else if (screenScroll == 3) {
    fill(255);
    rect(10,160,290,40);
    fill(0);
    text("Work: ", 120, 20);
    line(10,25,290,25);
    line(10,50,290,50);
    line(10,75,290,75);
    line(10,100,290,100);
    line(10,125,290,125);
    line(10,150,290,150);
    line(10,25,10,150);
    line(290,25,290,150);
    line(60,25,60,125);
    text("<= 9", 15, 40);
    text("10-14", 15, 65);
    text("15-20", 15, 90);
    text(">= 21", 15, 115);
    text("Scroll Through Different Screens", 30, 190);
    text("Choose 1: Athl,Acro,Tool(Int),Perf,Inst(Cha)", 20, 145);
    text("Poor Week ~ 1gp", 70,40);
    text("Modest Week ~ 5gp", 70,65);
    text("Comfortable Week ~ 10gp", 70,90);
    text("Comfortable + 25 ~ 35gp", 70,115);
  } else if (screenScroll == 4) {
    fill(255);
    rect(10,160,290,40);
    fill(0);
    text("Crime: ", 120, 20);
    line(10,25,290,25);
    line(10,50,290,50);
    line(10,75,290,75);
    line(10,100,290,100);
    line(10,125,290,125);
    line(10,150,290,150);
    line(10,25,10,150);
    line(290,25,290,150);
    line(30,25,30,125);
    text("0", 15, 40);
    text("1", 15, 65);
    text("2", 15, 90);
    text("3", 15, 115);
    text("Pay attempt and 1w for every 25gp", 40,40);
    text("You escape", 40,65);
    text("1/2 attempt", 40,90);
    text("All the attempt", 40,115);
    line(60, 125, 60, 150);
    line(180, 125, 180, 150);
    text("Stealth", 12, 145);
    text("Thieves tools (Dex)", 63, 145);
    text("1 of:Inv, Per, Dec", 185, 145);
    text("Scroll Through Different Screens", 30, 190);
    line(130,50,130,100);
    line(175,50,175,100);
    text("DC:10", 135, 70);
    text("50", 177, 70);
    text("DC:15", 135, 90);
    text("100", 177, 90);
    line(200,50,200,100);
    line(250,50,250,100);
    text("DC:20", 205, 70);
    text("200", 252, 70);
    text("DC:25", 205, 90);
    text("1000", 252, 90);
  } 
}





void mouseClicked() {
  //Bottom left two
  if((mouseX >= 10 && mouseX<80) && (mouseY >= 160 && mouseY <=200)) {
    print("LLLL");
    if (scroll == 0) {//This one does gambling. The math is if PlayerRoll+Mod1 is > 2d10+5 then 1 sucess. 
      sucesses = 0;
      Proll1 = int(random(1, 21)) + mod1;
      Hroll1 = int(random(1, 11)) + int(random(1, 11)) + 5;
      if (Proll1 > Hroll1) {
        sucesses++;
      }
      Proll2 = int(random(1, 21)) + mod2;
      Hroll2 = int(random(1, 11)) + int(random(1,11)) + 5;
      if (Proll2 > Hroll2) {
        sucesses++;
      }
      Proll3 = int(random(1, 21)) + mod3;
      Hroll3 = int(random(1, 11)) + int(random(1,11)) + 5;
      if (Proll3 > Hroll3) {
        sucesses++;
      }
      
      print(Hroll1 + ", " + Proll1 + " | " + Hroll2 + ", " + Proll2 + " | " + Hroll3 + ", " + Proll3);
      
    } else if (scroll == 1) { // Work! elizzaaaaa........
      Proll1 = int(random(1, 21)) + mod1;
      sucesses = Proll1;
    }
    
  }
  
  if((mouseX >= 110 && mouseX <= 200) && (mouseY >= 160 && mouseY <= 200)) {
    print("LLLC");
    if (scroll == 0) {
      if (scroll == 0) {//This one does pit fighting. The math is if PlayerRoll+Mod1 is > 2d10+5 then 1 sucess. 
        sucesses = 0;
        Proll1 = int(random(1, 21)) + mod1;
        Hroll1 = int(random(1, 11)) + int(random(1, 11)) + 5;
        if (Proll1 > Hroll1) {
          sucesses++;
        }
        Proll2 = int(random(1, 21)) + mod2;
        Hroll2 = int(random(1, 11)) + int(random(1,11)) + 5;
        if (Proll2 > Hroll2) {
          sucesses++;
        }
        Proll3 = int(random(1, 21)) + mod3 + int(random(1,con));
        Hroll3 = int(random(1, 11)) + int(random(1,11)) + 5;
        if (Proll3 > Hroll3) {
          sucesses++;
        }
      }
      
    } else if (scroll == 1) {
        sucesses = 0;
        Proll1 = int(random(1, 21)) + mod1;
        if (Proll1 > con) {
          sucesses++;
        }
        Proll2 = int(random(1, 21)) + mod2;
        if (Proll2 > con) {
          sucesses++;
        }
        Proll3 = int(random(1, 21)) + mod3;
        if (Proll3 > con) {
          sucesses++;
        }
    }
  }
  
  
  
  //Triangular thingies
  if((mouseX <= 70 && mouseX >= 60) && (mouseY >= 15 && mouseY <= 25)) {//top left top
    mod1 = mod1+1;
  }
 if((mouseX <= 70 && mouseX >= 60) && (mouseY >= 35 && mouseY <= 45)) {//top left top
    mod1 = mod1-1;
  }
  //center ones
  if((mouseX <= 145 && mouseX >= 135) && (mouseY >= 15 && mouseY <= 25)) {//top left top
    mod2 = mod2+1;
  }
  if((mouseX <= 145 && mouseX >= 135) && (mouseY >= 35 && mouseY <= 45)) {//top left top
    mod2 = mod2-1;
  }
  //right ones
  if((mouseX <= 220 && mouseX >= 210) && (mouseY >= 15 && mouseY <= 25)) {//top left top
    mod3 = mod3+1;
  }
  if((mouseX <= 220 && mouseX >= 210) && (mouseY >= 35 && mouseY <= 45)) {//top left top
    mod3 = mod3-1;
  }
  //CONSTITUION!!!!!!!!!! MEOW MEOW CAOW 
  if((mouseX <= 295 && mouseX >= 285) && (mouseY >= 15 && mouseY <= 25)) {//top left top
    con = con+1;
  }
  if((mouseX <= 295 && mouseX >= 285) && (mouseY >= 35 && mouseY <= 45)) {//top left top
    con = con-1;
  }
  
  
  
  //scrolling visible things
  if((mouseX <= 300 && mouseX >=210) && (mouseY<=200 && mouseY >= 160)) {
    println(scroll);
    scroll++;
    if (scroll >= 2) {
      scroll = 0;
    }
  }  
  if((mouseX <= 200 && mouseX >=110) && (mouseY >= 60 && mouseY <= 75)) {
    Rscroll++;
    if (Rscroll >= 3) {
     Rscroll = 0; 
    }
  }
  // Screen scroll to access pictures+tables
  if (mouseX <= 300 && mouseX >= 10 && (mouseY >= 110 && mouseY <=150)) {
    if (screenScroll == 0) {
    screenScroll++;
    print("scroll");
    if (screenScroll >= 5) {
      screenScroll = 0;
    }
    }
  }
  if ((mouseX <= 300 && mouseX >=10) && (mouseY <=200 && mouseY >=160)) {
    if (screenScroll != 0) {
      screenScroll++;
      print("scroll");
      if (screenScroll >= 5) {
        screenScroll = 0;
      }
    }
  }
  //Debug
  println(mouseX + "," + mouseY);
  
}
