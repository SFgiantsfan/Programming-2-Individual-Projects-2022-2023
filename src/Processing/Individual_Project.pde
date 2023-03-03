// Ethan Reynolds || AP Programming Individual Project || 2023

boolean play, tng;
Button[] buttons = new Button[2];
Button[] teamsB = new Button[32];
StadiumTracker s1 = new StadiumTracker();
TeamNameGuesser t1 = new TeamNameGuesser();
Teams team = new Teams();
PImage MLB, Braves;
int x, y, w, h;
float k;

void setup() {
  size (1000, 1000);
  x=30;
  y=180;
  w=150;
  h=45;
  play = true;
  buttons[0] = new Button(500, 750, 150, 45, "Stadium Tracker", color(0), color(100));
  //x+=40;
  for (int t=0; t<15; t++) {
    teamsB[t] = new Button(x, y, w, h, team.team[t][0], color(0), color(100));
    x+=200;
    if(t==4){
      x=30;
      y+=150;
    } else if(t==9){
      x=30;
      y+=150;
    }
  }
  
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
    k = random(0,15);
    int t = int(k);
    for (int b=0; b<15; b++) {
      teamsB[b].display();
      teamsB[b].hover(mouseX, mouseY);
    }
    fill (0);
    textAlign(CENTER);
    text("Welcome! Take your first guess!", width/2, 20);
    if (mousePressed == true) {
      if (teamsB[t].on) {
        text("Test", width/2, 50);
      } else if(teamsB[0].on == false){
        text("wrong", width/2,100);
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
