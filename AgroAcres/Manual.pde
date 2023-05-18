class Manual {
  float buttonX = 300;
  float buttonY = height - 100;
  float buttonW = 300; // width
  float buttonH = 50; //height 
  int nextLine = 15;
  int nextTitle = 30;
  int indent = 75;

  void showCropInfo() {
    background(212, 100, 41);

    // BUTTON
    fill(255);
    noStroke();
    rect(buttonX, buttonY, buttonW, buttonH);
    if (mousePressed) {
      if (mouseX>buttonX && mouseX <buttonX+buttonW && mouseY>buttonY && mouseY <buttonY+buttonH) {
        argoScreen = 2;
      }
    }
    // BUTTON TEXT
    fill(212, 100, 41);
    textSize(40);
    textAlign(CENTER);
    text("BEGIN", width/2, height-60);

    // MAIN TITLE
    fill(255);
    textSize(35);
    textAlign(CENTER);
    text("FARMER'S ALMANAC", width/2, 100);

    // PRINTING CORN CROP INFORMATION 
    textSize(20);
    textAlign(LEFT);
    text("CORN", indent, height/5);  

    textSize(15);
    text("Corn grows best in warm, sunny weather with moderate rain.", indent, height/5+nextTitle);
    text("For best results, plant in loam soil between around springtime to harvest in early fall.", indent, height/5 + nextLine+nextTitle);
    
    image(imgCorn, 690, 80, width/6, height/4.5);

    // PRINTING OAT CROP INFORMATION
    textSize(20);
    textAlign(LEFT);
    text("OAT", indent, height/3); 

    textSize(15);
    text("Oats also prefer warm, sunny weather with moderate rain. They grow best in fertile, well-drained soil.", indent, height/3+nextLine);  
    text("They should be planted during late summer and harvested in mid-summer of the following year.", indent, height/3+nextLine+nextTitle);
    
    image(imgOats, 690, 160, width/6, height/4.5);

    // PRINTING WHEAT CROP INFORMATION
    textSize(20);
    textAlign(LEFT);
    text("WHEAT", indent, height/2); 

    textSize(15);
    text("Wheat grows best in warm temperatures with moderate rain.", indent, (height/2)+nextLine);
    text("They should be planted in clay loam in spring or fall to be harvested in the summer.", indent, (height/2)+nextLine+nextTitle);
    
    image(imgWheat, 690, 240, width/6, height/4.5);
  }
}
