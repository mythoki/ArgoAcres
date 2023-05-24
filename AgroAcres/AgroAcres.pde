// IMPORTING GUI
import g4p_controls.*;

// IMPORTING FONTS
PFont mono;

// IMPORTING IMAGES
PImage imgSun, imgMoon;
PImage imgCloudy, imgHeatwave, imgRain, imgSnow, imgStormy;
PImage imgCorn, imgWheat, imgOats;
PImage imgIce, imgFire;

// UNADJUSTABLE VARIABLES FOR GUI
boolean clicked = true; //for GUI buttons 
boolean weatherClicked = true; 

// displaying weather images
boolean showimage = false;  // cloudy 
boolean showimage2 = false; // heat wave
boolean showimage3 = false; // rain
boolean showimage4 = false; // snow
boolean showimage5 = false; // stormy

boolean showIce = false;
boolean showFire = false;

// crop conditions
String cornCond = "normal";
String oatCond = "normal";
String wheatCond = "normal";

// INITAL SCREEN 
int argoScreen = 0; //set to title screen

// SEASON VARIABLES 
int season = 0;
color bgColour = color(93, 194, 50);

// TEMPERATURE VARIABLES
float temperature = 20;

// CROP VARIABLES
int crop;
ArrayList<Crop> myCrops = new ArrayList<Crop>();

//---------------------------//
//-----------SETUP-----------//
//---------------------------//

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

  imgIce = loadImage("ice.png");
  imgFire = loadImage("fire.png");
}

//---------------------------//
//----------SCREENS----------//
//---------------------------//

void draw() {  
  // DRAW TITLE SCREEN
  if (argoScreen == 0) {
    Title t = new Title(300, 350, 300, 50);
    float buttonX = 300;
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

    selectHeat();
    selectRain();
    selectSnow();
    selectCloudy();
    selectStormy();
    
    temperatureAdjustments();
    tempImageAdjustments();
  }
}

void startProgram() {
  argoScreen = 2;
}

//---------------------------//
//----DRAWING BACKGROUND----///
//---------------------------//

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

  //info box
  fill(250, 242, 130);
  rect(650, 75, 225, 500);
  rect(670, 55, 190, 540);
  circle(670, 75, 40);
  circle(855, 75, 40);
  circle(670, 575, 40);
  circle(855, 575, 40);

  //if crop
  //draw this soil
  noStroke();

  fill(122, 78, 24);

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


//---------------------------//
//-----------CLEAR-----------//
//---------------------------//

void clear() { // resets program settings
  startProgram();
  bgColour = color(93, 194, 50);
  
  // resets weather conditions
  showimage = false;
  showimage2 = false;
  showimage3 = false;
  showimage4 = false; 
  showimage5 = false;
  
  // resets crop conditions
  showIce = false;
  showFire = false;
}
