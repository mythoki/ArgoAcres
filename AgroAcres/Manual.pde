class Manual {
  float buttonX = 300;
  float buttonY = height - 200;
  float buttonW = 300; // width
  float buttonH = 50; //height 
  
  int nextLine = 15;
  int nextTitle = 30;
  int nextParagraph = 50;
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
    text("BEGIN", width/2, buttonY+40);

    // MAIN TITLE
    fill(255);
    textSize(35);
    textAlign(CENTER);
    text("FARMER'S ALMANAC", width/2, 100);

    // PRINTING CORN CROP INFORMATION 
    textSize(25);
    textAlign(LEFT);
    text("CORN", indent, height/5);  

    textSize(15);
    text("Corn grows best in warm, sunny weather (21-30 degrees) with moderate rain.", indent, height/5+nextTitle);
    text("For best results, plant in loam soil between around springtime to harvest in early fall.", indent, height/5 + nextLine+nextTitle);
    
    image(imgCorn, 700, 80, width/6, height/4.5);

    // PRINTING OAT CROP INFORMATION
    textSize(25);
    textAlign(LEFT);
    text("OAT", indent, height/3); 

    textSize(15);
    text("Oats prefer warm, sunny weather (20-25 degrees) with moderate rain.", indent, height/3+nextTitle);  
    text("Plant during late summer and harvested in mid-summer of the following year in well-drained soil.", indent, height/3+nextLine+nextTitle);
    
    image(imgOats, 700, 180, width/6, height/4.5);

    // PRINTING WHEAT CROP INFORMATION
    textSize(25);
    textAlign(LEFT);
    text("WHEAT", indent, height/2); 

    textSize(15);
    text("Wheat grows best in warm temperatures (20-24 degrees) with moderate rain.", indent, (height/2)+nextTitle);
    text("They should be planted in clay loam in spring or fall to be harvested in the summer.", indent, (height/2)+nextLine+nextTitle);
    
    image(imgWheat, 700, 280, width/6, height/4.5);
  }
}
