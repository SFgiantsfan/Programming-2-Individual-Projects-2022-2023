// Ethan Reynolds || AP Programming Individual Project || 2023

boolean play, tng, st, correct;
Button[] buttons = new Button[6];
Button[] teamsB = new Button[30];
Button[] staB = new Button[32];
StadiumTracker s1 = new StadiumTracker();
TeamNameGuesser t1 = new TeamNameGuesser();
Teams team = new Teams();
PImage MLB, Braves;
int x, y, w, h, t, screen;
float k;
Table infoT;
TextBox text;

void setup() {
  size (1000, 1000);
  x=30;
  y=200;
  w=150;
  h=45;
  screen = 0;
  k = random(0, 30);
  t = int(k);
  correct = false;
  play = true;
  infoT = loadTable("infoT.csv", "header");
  // Was 750 for y
  buttons[0] = new Button(250, 750, 200, 45, "Team Name Guesser", color(0), color(100));
  buttons[1] = new Button(600, 750, 150, 45, "Stadium Tracker", color(0), color(100));
  buttons[2] = new Button(30, 50, 150, 45, "Home", color(0), color(100));
  buttons[3] = new Button(750, 50, 150, 45, "Play Again", color(0), color(100));
  buttons[4] = new Button(750, 750, 150, 45, "Notes", color(0), color(100));
  buttons[5] = new Button(750, 750, 150, 45, "Back", color(0), color(100));
  
  //x+=40;
  for (int t=0; t<30; t++) {
    teamsB[t] = new Button(x, y, w, h, team.team[t][0], color(0), color(100));
    x+=200;
    if (t==4) {
      x=30;
      y+=125;
    } else if (t==9) {
      x=30;
      y+=125;
    } else if (t==14) {
      x=30;
      y+=125;
    } else if (t==19) {
      x=30;
      y+=125;
    } else if (t==24) {
      x=30;
      y+=125;
    }
  }

  x=30;
  y=180;
  h=60;

  for (int t=0; t<30; t++) {
    staB[t] = new Button(x, y, w, h, team.team[t][4], color(0), color(100));
    x+=200;
    if (t==4) {
      x=30;
      y+=100;
    } else if (t==9) {
      x=30;
      y+=100;
    } else if (t==14) {
      x=30;
      y+=100;
    } else if (t==19) {
      x=30;
      y+=100;
    } else if (t==24) {
      x=30;
      y+=100;
    }
  }

  MLB = loadImage("MLB.jpg");
  tng = false;
  st = false;
  text = new TextBox(width/2, height/2, 200, 30);
  
}

void draw() {

  background(255);
  switch(screen) {
  case 0:
    startScreen();
    break;
  case 1:
    teamNameGuesser();
    break;
  case 2:
    stadiumTracker();
    break;
  case 3:
    rating();
    break;
  case 4:
    notes();
    break;
  }
}

void mousePressed() {
  if (buttons[0].on) {
    screen = 1;
  } else if (buttons[1].on) {
    screen =2;
  }

  if (teamsB[t].on) {
    t1.correct = true;
  } else {
    t1.guess();
    //} else if (t1.guesses==1) {
    //  t1.guesses++;
  }
  
  if(buttons[2].on){
    screen = 0;
  }
  
  if (buttons[3].on) {
    screen = 1;
  }
  
  //for (int a = 0; a>0; a++){
    if (staB[0].on){
      screen = 3;
    }
  //}
  
  if(buttons[4].on) {
    screen = 4;
  }
  
  if(buttons[5].on) {
    screen = 2;
  }
}

void startScreen() {
  background (0);
  textAlign(CENTER);
  textSize(56);
  fill(255);
  imageMode(CORNERS);
  image(MLB, 150, 250, 850, 600);
  text("Baseball Trivia and Stadium Tracker!", width/2, 50);
  textSize(15);
  text("There are two apps involved: A Stadium Tracker and a Team Name Guesser. The Stadium Tracker is where you can store information\nabout the MLB stadiums you have been to. The Team Name Guesser is where you guess a MLB team based on information given.\nPress 1 for the Stadium Tracker and 2 for the Team Name Guesser.", width/2, 100);
  textSize(10);
  text("By: Ethan Reynolds", 50, height-25);
  //play = false;
  buttons[0].display();
  buttons[0].hover(mouseX, mouseY);

  buttons[1].display();
  buttons[1].hover(mouseX, mouseY);
}

void stadiumTracker() {
  background (210);
  fill(0);
  textAlign(CENTER);
  text("What stadium did you go to?", width/2, 20);

  for (int b=0; b<30; b++) {
    staB[b].display();
    staB[b].hover(mouseX, mouseY);
  }
  
  buttons[2].display();
  buttons[2].hover(mouseX, mouseY);
  buttons[3].display();
  buttons[3].hover(mouseX, mouseY);
}

void teamNameGuesser() {
  background(210);
  for (int b=0; b<30; b++) {
    teamsB[b].display();
    teamsB[b].hover(mouseX, mouseY);
  }

  buttons[2].display();
  buttons[2].hover(mouseX, mouseY);
  buttons[3].display();
  buttons[3].hover(mouseX, mouseY);
  
  t1.play(t);

}

void Stadium() {
  
}

void rating () {
  fill(0);
  textAlign(CENTER);
  text("What do you rate the stadium out of 10?", width/2, 20);
  buttons[4].display();
  buttons[4].hover(mouseX, mouseY);
  text.draw();
  TableRow r = infoT.addRow();
  r.setString("Rating", text.textValue);
  //infoT.clearRows();
  saveTable(infoT, "infoT.csv");
  println(text.textValue);
  
}

//void keyPressed() {
//  if (key == ENTER) {
//    screen = 4;
//  }
//}

void notes() {
  fill(0);
  textAlign(CENTER);
  text("Write any notes you have:", width/2, 20);
  buttons[5].display();
  buttons[5].hover(mouseX, mouseY);
  text.draw();
  TableRow n = infoT.addRow();
  n.setString("Notes", text.textValue);
  saveTable(infoT, "infoT.csv");
}
