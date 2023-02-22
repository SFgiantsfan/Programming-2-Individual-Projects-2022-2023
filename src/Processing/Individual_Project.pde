// Ethan Reynolds || AP Programming Individual Project || 2023

boolean play;
Button[] buttons = new Button[2];
StadiumTracker s1 = new StadiumTracker();
TeamNameGuesser t1 = new TeamNameGuesser();
PImage MLB;

void setup() {
  size (1000,1000);
  play = true;
  buttons[0] = new Button(20,180,200,200, "Stadium Tracker", color(0), color(255));
  MLB = loadImage("MLB.jpg");
}

void draw() {
  
  //background (255);
  if(play == true){
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
}

void mousePressed() {
  for (int i=0; i<buttons.length; i++) {
    if(buttons[0].on){
      teamNameGuesser();
    }
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
  play = false;
  
}

void stadiumTracker(){
  background (210);
  buttons[0].delete();
  s1.display();
}

void teamNameGuesser() {
  buttons[0].delete();
  background(210);
  t1.play();
}
