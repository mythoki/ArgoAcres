import g4p_controls.*;

boolean clicked = true;
int argoScreen = 0;
int season = 0;
int crop = 0;
PFont mono; 
color bgColour = color(93, 194, 50);


void setup() {
  size(900, 650);
  //noLoop();
  createGUI();
  mono = loadFont("Serif.bold-48.vlw"); //text font file
  textFont(mono);
}

void draw() {  
  if (argoScreen == 0) {
    Title t = new Title();
    t.drawTitleScreen();
  } else if (argoScreen == 1) {
    Manual m = new Manual();
    m.showCropInfo();
  } else if (argoScreen == 2) {
    drawBackground();
  }
}

void startProgram() {
  argoScreen = 2;
}

//void mousePressed() {
//   if ( argoScreen == 1) {
//    startProgram();
//  }
//}

void drawBackground() {
  background( bgColour );

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

  if (crop == 0) //corn
    fill(168, 157, 126);

  if (crop == 1) //wheat
    fill(120, 109, 79);

  if (crop == 2) //oats
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

void clear() {
startProgram();

}
