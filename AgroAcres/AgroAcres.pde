void setup() {
  size(900, 650);
}

void draw() {
  drawBackground();
}

void drawBackground() {

  //if season
  //draw this
  
  if (season == "Summer")
    background(93, 194, 50);
    
  if (season == "Autumn")
    background(91, 128, 75);
    
  if (season == "Winter")
    background(255);
  
  if (season == "Spring")
    background(50, 168, 82);
  
  //boxes
  noStroke();
  fill(48, 27, 7);
  rect(75, 55, 525, 540);
  rect(55, 75, 565, 500);
  circle(75, 75, 40);
  circle(600, 75, 40);
  circle(600, 575, 40);
  circle(75, 575, 40);
  
  fill(216, 241, 242);
  rect(650, 75, 225, 500);
  rect(670, 55, 190, 540);
  circle(670, 75, 40);
  circle(855, 75, 40);
  circle(670, 575, 40);
  circle(855, 575, 40);
  
  //if crop
  //draw this soil
  noStroke();

  if (crop == "corn")
    fill(168, 157, 126);
  
  if (crop == "wheat")
    fill(120, 109, 79);
  
  if (crop == "oats")
    fill(92, 82, 56);
  
  int rowX = 120;
  int rowY = 100;
  int d = 50;
  int h = 450;
  
  for (int i = 0; i<6; i++) {
    circle(rowX, rowY, d);
    circle(rowX, rowY+h, d);
    rect(rowX - d/2, rowY, d, h);
    
    rowX += 87;
  }
  
}
