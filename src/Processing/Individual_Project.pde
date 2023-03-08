// Ethan Reynolds || AP Programming Individual Project || 2023

boolean play, tng, st, correct;
Button[] buttons = new Button[3];
Button[] teamsB = new Button[32];
Button[] staB = new Button[32];
StadiumTracker s1 = new StadiumTracker();
TeamNameGuesser t1 = new TeamNameGuesser();
Teams team = new Teams();
PImage MLB, Braves;
int x, y, w, h, t, screen;
float k;

void setup() {
  size (1000, 1000);
  x=30;
  y=180;
  w=150;
  h=45;
  screen = 0;
  k = random(0, 15);
  t = int(k);
  correct = false;
  play = true;
  // Was 750 for y
  buttons[0] = new Button(250, 750, 200, 45, "Team Name Guesser", color(0), color(100));
  buttons[1] = new Button(600, 750, 150, 45, "Stadium Tracker", color(0), color(100));
  buttons[2] = new Button(550, 450, 150, 45, "Home", color(0), color(100));
  //x+=40;
  for (int t=0; t<19; t++) {
    teamsB[t] = new Button(x, y, w, h, team.team[t][0], color(0), color(100));
    x+=200;
    if (t==4) {
      x=30;
      y+=150;
    } else if (t==9) {
      x=30;
      y+=150;
    } else if (t==14) {
      x=30;
      y+=150;
    } else if (t==19) {
      x=30;
      y+=150;
    }
  }

  x=30;
  y=180;
  h=60;

  for (int t=0; t<19; t++) {
    staB[t] = new Button(x, y, w, h, team.team[t][4], color(0), color(100));
    x+=200;
    if (t==4) {
      x=30;
      y+=150;
    } else if (t==9) {
      x=30;
      y+=150;
    } else if (t==14) {
      x=30;
      y+=150;
    } else if (t==19) {
      x=30;
      y+=150;
    }
  }

  MLB = loadImage("MLB.jpg");
  tng = false;
  st = false;
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
  }

  //background (255);
  //if (play == true) {
  //  startScreen();
  //}

  //for (int i=0; i<3; i++) {
  //buttons[0].display();
  //buttons[0].hover(mouseX, mouseY);

  //buttons[1].display();
  //buttons[1].hover(mouseX, mouseY);

  //}
  //if(keyPressed) {
  //  if (key == '1') {
  //    stadiumTracker();
  //  } else if (key == '2'){
  //    teamNameGuesser();
  //  }
  //}

  //if (mousePressed == true) {
  //  for (int j=0; j<buttons.length; j++) {
  //    if (buttons[0].on) {
  //      buttons[j].delete();
  //      background(210);
  //      tng = true;
  //    } else if (buttons[1].on) {
  //      buttons[j].delete();
  //      background(210);
  //      st = true;
  //    }
  //  }
  //}

  // Team Name Guesser
  //if (tng == true) {

  //  int t = int(k);
  //  for (int b=0; b<19; b++) {
  //    teamsB[b].display();
  //    teamsB[b].hover(mouseX, mouseY);
  //  }

  //  buttons[2].display();
  //  buttons[2].hover(mouseX, mouseY);

  //  fill (0);
  //  textAlign(CENTER);
  //  text("Welcome! Take your first guess!", width/2, 20);
  //  if (mousePressed == true && tng == true) {
  //    if (teamsB[t].on) {
  //      text("Test", width/2, 50);
  //    } else if (t1.guesses==0) {
  //      text(team.team[t][1], width/2, 100);
  //      t1.guesses++;
  //    } else if (t1.guesses==1) {
  //      text(team.team[t][2], width/2, 120);
  //    }
  //  }
  //}

  // Stadium Tracker
  //if (st == true) {
  //  fill(0);
  //  textAlign(CENTER);
  //  //buttons[2].display();
  //  //buttons[2].hover(mouseX, mouseY);
  //  text("What stadium did you go to?", width/2, 20);

  //  for (int b=0; b<19; b++) {
  //    staB[b].display();
  //    staB[b].hover(mouseX, mouseY);
  //  }
  //}
}

void mousePressed() {
  if (buttons[0].on) {
    screen = 1;
  } else if (buttons[1].on) {
    screen =2;
  }

  if (teamsB[t].on) {
    correct = true;
  } else {
    t1.guesses++;
    //} else if (t1.guesses==1) {
    //  t1.guesses++;
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
  buttons[0].delete();
  fill(0);
  textAlign(CENTER);
  //buttons[2].display();
  //buttons[2].hover(mouseX, mouseY);
  text("What stadium did you go to?", width/2, 20);

  for (int b=0; b<19; b++) {
    staB[b].display();
    staB[b].hover(mouseX, mouseY);
  }
}

void teamNameGuesser() {
  buttons[0].delete();
  background(210);
  for (int b=0; b<19; b++) {
    teamsB[b].display();
    teamsB[b].hover(mouseX, mouseY);
  }

  buttons[2].display();
  buttons[2].hover(mouseX, mouseY);

  fill (0);
  textAlign(CENTER);
  text("Welcome! Take your first guess!", width/2, 20);

  if (correct == true) {
    text("Test", width/2, 50);
  } else if (t1.guesses==1) {
    text(team.team[t][1], width/2, 100);
  } else if (t1.guesses==2) {
    text(team.team[t][1], width/2, 100);
    text(team.team[t][2], width/2, 120);
  }
}
//}
