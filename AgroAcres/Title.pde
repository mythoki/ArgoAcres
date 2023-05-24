class Title {
  float buttonX, buttonY, buttonW, buttonH; // dimensions for button

  Title(int bx, int by, int bw, int bh){
    this.buttonX = bx;
    this.buttonY = by;
    this.buttonW = bw;
    this.buttonH = bh;
  }
  
  void drawTitleScreen() {
    background(212, 100, 41);
    fill(255);

    //button
    fill(255);
    noStroke();
    rect(buttonX, buttonY, buttonW, buttonH); // takes you to farmer's almanac/manual
    if (mousePressed) {
      if (mouseX>buttonX && mouseX <buttonX+buttonW && mouseY>buttonY && mouseY <buttonY+buttonH) {
        argoScreen = 1;
      }
    }

    //title
    textSize(100);
    textAlign(CENTER);
    text("AGROACRES", width/2, height/2);

    //button text
    fill(212, 100, 41);
    textSize(20);
    textAlign(CENTER);
    text("VIEW FARMER'S ALMANAC", width/2, 380);
  }
}
