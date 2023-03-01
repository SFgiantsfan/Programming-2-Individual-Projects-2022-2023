// Ethan Reynolds || AP Programming Individual Project || 2023

boolean play, tng;
Button[] buttons = new Button[2];
Button[] teamsB = new Button[32];
StadiumTracker s1 = new StadiumTracker();
TeamNameGuesser t1 = new TeamNameGuesser();
Teams team = new Teams();
PImage MLB, Braves;

void setup() {
  size (1000, 1000);
  play = true;
  buttons[0] = new Button(20, 180, 150, 45, "Stadium Tracker", color(0), color(100));
  teamsB[0] = new Button(250, 180, 150, 45, team.team[0][0], color(0), color(100));
  teamsB[1] = new Button(405, 180, 150, 45, team.team[0][0], color(0), color(100));
  teamsB[2] = new Button(560, 180, 150, 45, team.team[0][0], color(0), color(100));
  teamsB[3] = new Button(715, 180, 150, 45, team.team[0][0], color(0), color(100));
  MLB = loadImage("MLB.jpg");
  tng = false;
}

void draw() {

  //background (255);
  if (play == true) {
    startScreen();
  }

  for (int i=0; i<buttons.length; i++) {
    buttons[0].display();
    buttons[0].hover(mouseX, mouseY);
  }
  //if(keyPressed) {
  //  if (key == '1') {
  //    stadiumTracker();
  //  } else if (key == '2'){
  //    teamNameGuesser();
  //  }
  //}

  if (mousePressed == true) {
    for (int j=0; j<buttons.length; j++) {
      if (buttons[0].on) {
        buttons[0].delete();
        background(210);
        tng = true;
      }
    }
  }

  // Team Name Guesser
  if (tng == true) {
    for (int i=0; i<buttons.length; i++) {
      teamsB[0].display();
      teamsB[0].hover(mouseX, mouseY);
    }
    fill (0);
    textAlign(CENTER);
    text("Welcome! Take your first guess!", width/2, 20);
    if(mousePressed == true){
      if (teamsB[0].on) {
        text("Test", width/2, 50);
      }
    }
  }
}

//void mousePressed() {
//  for (int i=0; i<buttons.length; i++) {
//    if(buttons[0].on){
//      teamNameGuesser();
//    }
//  }
//}

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
  play = false;
}

//void stadiumTracker() {
//  background (210);
//  buttons[0].delete();
//  s1.display();
//}

//void teamNameGuesser() {
//  buttons[0].delete();
//  background(210);
//  t1.play();
//}
