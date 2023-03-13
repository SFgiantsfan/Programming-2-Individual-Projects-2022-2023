class TeamNameGuesser extends Teams {
  // Member Varuiables
  int guesses;
  boolean correct, play;
  int tn;
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

  void play(int t) {
    fill (0);
    textAlign(CENTER);
    text("Welcome! Take your first guess!", width/2, 20);

    if (correct == true) {
      text("You got it!", width/2, 50);
      text(team[t][1], width/2, 80);
      text(team[t][2], width/2, 100);
      text(team[t][3], width/2, 120);
      text(team[t][4], width/2, 140);
      text(team[t][5], width/2, 160);
    } else if (guesses==1) {
      text(team[t][1], width/2, 80);
    } else if (guesses==2) {
      text(team[t][1], width/2, 80);
      text(team[t][2], width/2, 100);
    } else if (guesses==3) {
      text(team[t][1], width/2, 80);
      text(team[t][2], width/2, 100);
      text(team[t][3], width/2, 120);
    } else if (guesses==4) {
      text(team[t][1], width/2, 80);
      text(team[t][2], width/2, 100);
      text(team[t][3], width/2, 120);
      text(team[t][4], width/2, 140);
    } else if (guesses==5) {
      text(team[t][1], width/2, 80);
      text(team[t][2], width/2, 100);
      text(team[t][3], width/2, 120);
      text(team[t][4], width/2, 140);
      text(team[t][5], width/2, 160);
    } else if (guesses == 6) {
      text("You Failed :(", width/2, 50);
      text(team[t][1], width/2, 80);
      text(team[t][2], width/2, 100);
      text(team[t][3], width/2, 120);
      text(team[t][4], width/2, 140);
      text(team[t][5], width/2, 160);
    }
  }

  int guess() {
    return guesses++;
  }
}
