class Button{
   // Member Variables
  float x,y,w,h;
  boolean on;
  String val;
  color c1, c2;
  //PImage logo;
  
  // Constructor
  Button(float tempX, float tempY, float tempW, float tempH, String tempVal, color tempC1, color tempC2) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    val = tempVal;
    c1 = tempC1;
    c2 = tempC2;
    //logo = tempLogo;
    on = false; // Button always starts as off
  }
  
  // Display Method
  void display() {
    if(on) {
      fill(c2);
    } else {
      fill(c1);
    }
    rect(x,y,w,h,5);
    fill(255);
    textAlign(LEFT);
    textSize(20);
    text(val, x+7, y+20);
    //image(image, x+10,y+15);
  }
  
  // Rollover Method
  void hover(int mx, int my) {
    on = (mx<x+w && mx>x && my>y && my<y+h);
  }
  
  // Delete Method
  void delete() {
    x=-100;
    y=-100;
    w = 0;
    h = 0;
    c1 = 0;
    c2 = 0;
  }
}
