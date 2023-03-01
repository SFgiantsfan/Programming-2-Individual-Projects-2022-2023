class TeamNameGuesser extends Teams {
  // Member Varuiables
  private int guesses;
  private boolean correct, play;
  private int tn;
  Button[] buttons = new Button[2];

  // Constructor
  public TeamNameGuesser() {
    guesses = 0;
    correct = false;
    tn = 1;
    play = true;
    //buttons[0] = new Button(20, 180, 150, 45, "Giants!", color(0), color(100));
  }


  // Member Methods
  //public void play() {
  //  fill(0);
  //  //for (int i=0; i<buttons.length; i++) {
  //  //  buttons[0].display();
  //  //  buttons[0].hover(mouseX, mouseY);
  //  //}


  //  textAlign(CENTER);
  //  text("Welcome! Take your first guess!", width/2, 20);
  //  if (mousePressed) {
  //    if (key == '1') {
  //      text("You got it!\nIf you want to play again, press 1", 100, 100);
  //      play = false;
  //      if (keyPressed) {
  //        if (key == '1') {
  //        }
  //      } else if (key == '4') {
  //        text(team[tn][0], width/2, height/2);
  //      }
  //    }
  //  }
  //}
  
  int guess(){
    return guesses++;
  }
}
