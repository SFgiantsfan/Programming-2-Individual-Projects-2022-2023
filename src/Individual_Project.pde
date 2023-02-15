// Ethan Reynolds || AP Programming Individual Project || 2023

boolean play;
Button[] button = new Button[2];
StadiumTracker s1 = new StadiumTracker();

void setup() {
  size (1000,1000);
  play = true;
  button[0] = new Button(20,180,20,20, "Stadium Tracker", color(#31A30F), color(#99F07F));
}

void draw() {
  //background (255);
  if(play == true){
    startScreen();
  } 
  
  //for (int i=0; 1<button.length; i++) {
    //button[0].display();
    //button[0].hover(mouseX, mouseY);
  //}
  if(keyPressed) {
    if (key == '1') {
      stadiumTracker();
    } else if (key == '2'){
      background (105);
    } 
  }
}

void mousePressed() {
  //for (int i=0; i<button.length; i++) {
    //if(button[0].on){
      //loop();
    //}
  //}
}

void startScreen() {
  background (0);
  textAlign(CENTER);
  textSize(56);
  fill(255);
  text("Baseball Trivia and Stadium Tracker!", width/2, 50);
  textSize(15);
  text("There are two apps involved: A Stadium Tracker and a Team Name Guesser. The Stadium Tracker is where you can store information\nabout the MLB stadiums you have been to. The Team Name Guesser is where you guess a MLB team based on information given.", width/2, 100);
  textSize(10);
  text("By: Ethan Reynolds", 50, height-25);
  play = false;
  
}

void stadiumTracker(){
  background (210);
  s1.display();
}
