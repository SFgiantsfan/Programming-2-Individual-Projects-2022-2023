class TextBox {
  int x, y, boxWidth, boxHeight, textLimit = 40;
  float currentValue, keyCounter, previousKeyCounter;
  String textValue = " ";
  char keyInput, c;
  boolean keyReleased;

  TextBox(int x, int y, int boxWidth, int boxHeight) {
    this.x = x;
    this.y = y;
    this.boxWidth = boxWidth;
    this.boxHeight = boxHeight;
  }

  void draw() {
    drawBox();
    drawText();
    getUserInput();
  }

  void drawBox() {
    stroke(205);
    fill(225);
    rectMode(CORNER);
    rect(x, y, boxWidth, boxHeight);
  }

  void drawText() {
    textAlign(LEFT, CENTER);
    textSize(16);
    fill(0);
    text(textValue + getCursor(), x+5, y + boxHeight/2);
  }

  void getUserInput() {
    if (!keyPressed) {
      keyReleased = true;
      keyCounter = 0;
      previousKeyCounter = 0;
    }
    if (keyPressed && c != key) {
      keyCounter = millis();
      c = key;

      if (c == BACKSPACE) textValue = "";
      else if (c >= ' ') textValue += str(c);
      if (textValue.length() > textLimit) textValue = "";

      previousKeyCounter = keyCounter;
      keyReleased = false;
    }
  }
  
  String getCursor() {
    return hovering() && (frameCount>>4 & 1) == 0 ? "|" : "";
  }
  
  boolean hovering() {
    return mouseX >= x && mouseX <= x+boxWidth && mouseY >= mouseY && mouseY <= y + boxHeight;
  }
}
