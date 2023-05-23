// IMPORTING GUI
import g4p_controls.*;

// IMPORTING FONTS
PFont mono;

// IMPORTING IMAGES
PImage imgSun, imgMoon;
PImage imgCloudy, imgHeatwave, imgRain, imgSnow, imgStormy;
PImage imgCorn, imgWheat, imgOats;

// UNADJUSTABLE VARIABLES FOR GUI
boolean clicked = true; //for GUI buttons 
boolean weatherClicked = true; 

// displaying weather images
boolean showimage = false;  // cloudy 
boolean showimage2 = false; // heat wave
boolean showimage3 = false; // rain
boolean showimage4 = false; // snow
boolean showimage5 = false; // stormy

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
//-----DRAWING DAY/NIGHT-----//
//---------------------------//

void drawSunMoon() { //tied to GUI "DNbutton"
  //sun & moon
  if (clicked == true) { 
    image(imgMoon, 690, 80, width/6, height/4.5); // adding image
    
    fill(0); // adding text title to clarify the meaning of the symbol
    textSize(20);
    textAlign(RIGHT);
    text("NIGHT", 800, 235);
    
  } else {
    image(imgSun, 690, 80, width/6, height/4.5);
    
    fill(0);
    textSize(20);
    textAlign(RIGHT);
    text("DAY", 800, 235);
  }
}

//---------------------------//
//--DRAWING WEATHER OPTIONS--//
//---------------------------//

void selectCloudy() {
  if (showimage == true) {
    image(imgCloudy, 690, 220, width/6, height/4);
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("CLOUDY", 760, 360);
  } else {
  }
}

void selectHeat() {  
  if (showimage2 == true) {
    image(imgHeatwave, 640, 200, width/3.5, height/3);
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("HEAT WAVE", 760, 375);
  } else {
  }
}

void selectRain() {
  if (showimage3 == true) {
    image(imgRain, 610, 180, width/3, height/2.5);
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("RAINY", 760, 400);
  } else {
  }
}

void selectSnow() {
  if (showimage4 == true) {
    image(imgSnow, 690, 250, width/6, height/4.5);
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("SNOW", 760, 400);
  } else {
  }
}

void selectStormy() {
  if (showimage5 == true) {
    image(imgStormy, 650, 180, width/3.5, height/2.5);    
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("STORMY", 760, 420);
  } else {
  }
}

//---------------------------//
//-------DRAWING CROPS-------//
//---------------------------//

void drawCrops() {
  //if arraylist only has one, color all that one colour
  println("myCrops has size", myCrops.size());
  if (myCrops.size() == 1) {
    if (myCrops.get(0).equals("Corn")) {
      myCrops.get(0).colourCorn();
      print("Ahhh!");
    }
    
    if (myCrops.get(0).equals("Wheat"))
      myCrops.get(0).colourWheat();
      
    if (myCrops.get(0).equals("Oats"))
      myCrops.get(0).colourOats();
  }

  //if arraylist has two, find which two and split two colours
  if (myCrops.size() == 2) {
    int cropX = 120;
    int cropY = 110;
    int d = 30;
    int h = 428;
    int index = 0;
    noStroke();
    
    for (int i=0; i<2; i++) {
      for (int j=0; j<3; j++) {
        if (myCrops.get(index).equals("Corn"))
          myCrops.get(index).colourCorn();
          
        if (myCrops.get(index).equals("Wheat"))
          myCrops.get(index).colourWheat();
          
        if (myCrops.get(index).equals("Oats"))
          myCrops.get(index).colourOats();
          
        circle(cropX, cropY, d);
        circle(cropX, cropY+h, d);
        rect(cropX - d/2, cropY, d, h);
        
        cropX += 87;
      }
      index++;
    }
  }

  //if arraylist has length three, split evenly into three 
  if (myCrops.size() == 3) {
    int cropX = 120;
    int cropY = 110;
    int d = 30;
    int h = 428;
    int index = 0;
    noStroke();
    
    for (int i=0; i<3; i++) {
      for (int j=0; j<2; j++) {
        if (myCrops.get(index).equals("Corn"))
          myCrops.get(index).colourCorn();
          
        if (myCrops.get(index).equals("Wheat"))
          myCrops.get(index).colourWheat();
          
        if (myCrops.get(index).equals("Oats"))
          myCrops.get(index).colourOats();
          
        circle(cropX, cropY, d);
        circle(cropX, cropY+h, d);
        rect(cropX - d/2, cropY, d, h);
        
        cropX += 87;
      }
      index++;
    }
  }
  
}

//---------------------------//
//-----------CLEAR-----------//
//---------------------------//

void clear() {
  startProgram();
  bgColour = color(93, 194, 50);
  showimage = false;
  showimage2 = false;
  showimage3 = false;
  showimage4 = false; 
  showimage5 = false; 
}
