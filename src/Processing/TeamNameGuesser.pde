class TeamNameGuesser extends Teams {
  // Member Varuiables
  private int guesses;
  private boolean correct, play;
  private int tn;

  // Constructor
  public TeamNameGuesser() {
    guesses = 0;
    correct = false;
    tn = 1;
    play = true;
  }

  // Member Methods
  public void play() {
    fill(0);
    //text("play",width/2, 20);
    //text("Press 1 to play!", 500, 500);
    //if (keyPressed) {
    //  if (key == '1') {
    //    play = true;
    //  }


  //while (play == true) {
      text("Welcome! Take your first guess!", width/2, 20);
      if (keyPressed) {
        if (key == '1') {
          text("You got it!\nIf you want to play again, press 1", 100, 100);
          play = false;
          if (keyPressed) {
            if (key == '1') {
            }
          } else if (key == '4') {
            text(team[tn][0], width/2, height/2);
          }
        }
      }
   //}
  }
}
