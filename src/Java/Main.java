import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
    // Scanner to see what game is being played
    Scanner s1 = new Scanner(System.in);
		
    // Play boolean
		boolean play = true;
    //While loop to end app
    while (play == true) {
      //Introduction
    	System.out.println("Welcome to my Baseball App!\n                  ____\n                .'    '.\n               /'-....-'\\\n               |        |\n               \\.-''''-./\n                '.____.'\nBy: Ethan Reynolds\nThere are two apps involved: A Stadium Tracker and a Team Name Guesser.\nThe Stadium Tracker is where you can store information about the MLB stadiums you have been to. The Team Name Guesser is where you guess a MLB team based on information given.\nTo use the Stadium Tracker press 1 and to play the Team Name Guesser press 2!");
      //What game?
      int g = s1.nextInt();
      if(g == 1){
    	  Teams a = new StadiumTracker();
      } else if(g == 2) {
        Teams b = new TeamNameGuesser();
      } else {
        System.out.println("Invalid Imput.");
        play = false;
      }

      play = false;
      
		}

	}

}
