// IMPORTING GUI
import g4p_controls.*;

// IMPORTING FONTS
PFont mono;

// IMPORTING IMAGES
PImage imgSun, imgMoon;
PImage imgCloudy, imgHeatwave, imgRain, imgSnow, imgStormy;
PImage imgCorn, imgWheat, imgOats;

// UNADJUSTABLE VARIABLES
boolean clicked = true; //for GUI buttons 
int argoScreen = 0; //set to title screen

// season
int season = 0;
color bgColour = color(93, 194, 50);

// temperature
float temperature = 20;

//crop
int crop = 0;
//Crop c1, c2, c3;
ArrayList<Crop> myCrops = new ArrayList<Crop>();

// SETUP
void setup() {
  size(900, 650);
  createGUI();
  
  // LOADING FONTS
  mono = loadFont("Serif.bold-48.vlw"); //text font file
  textFont(mono);

  // LOADING IMAGES
  imgSun = loadImage("sun.png");
  imgMoon = loadImage("moon.png");
  
  imgCloudy = loadImage("cloudy.png");
  imgHeatwave = loadImage("heatwave.png");
  imgRain = loadImage("rain.png");
  imgSnow = loadImage("snow.png"); 
  imgStormy = loadImage("stormy.png");
  
  imgCorn = loadImage("corn.png");
  imgWheat = loadImage("wheat.png");
  imgOats = loadImage("oats.png");
}

// DRAWING
void draw() {  
  // DRAW TITLE SCREEN
  if (argoScreen == 0) {
    Title t = new Title();
    t.drawTitleScreen();
  } 
  
  // DRAW INSTRUCTIONS (MANUAL) TAB
  else if (argoScreen == 1) {
    Manual m = new Manual();
    m.showCropInfo();
  } 
  
  // DRAW MAIN SCREEN
  else if (argoScreen == 2) {
    drawBackground();
    drawSunMoon();
    drawCrops();
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

void drawSunMoon() { //tied to GUI "DNbutton"
  //sun & moon
  if (clicked == true) { 
    image(imgMoon, 690, 80, width/6, height/4.5);
  } 
  else {
    image(imgSun, 690, 80, width/6, height/4.5);
  }
}

void drawCrops() {
}


void clear() {
  startProgram();
  bgColour = color(93, 194, 50);
  //day = true;
}
