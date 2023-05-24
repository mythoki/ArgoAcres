// ADJUSTING BACKGROUND COLORS BASED ON TEMPERATURE SET BY USERS
void temperatureAdjustments() { 
  
  if (temperature >= 30){ // sets background to summer if temperature is more than 30 degrees
    bgColour = color(50, 168, 82);
    showFire = true;
    showIce = false;
  }
  
  if (temperature <= 0){ // sets background to winter if below 0
    bgColour = color(150, 200, 233);
    showIce = true;
    showFire = false;
  }
  
  if (temperature <= 15 && temperature > 0){ // sets background to fall if between 0 and 15 degrees
    bgColour = color(200, 60, 40);
    showIce = false;
    showFire = false;
  }
  
  if (temperature >= 15 && temperature <= 30){ // sets background to spring if between 15 and 30 degrees
    bgColour = color(93, 194, 50);
    showIce = false;
    showFire = false;
  }  
}

// ADDING IMAGE IF CROPS ARE OVERHEATED OR FREEZING
void tempImageAdjustments(){
  if (showIce == true){ // if conditions are too cold
    image(imgIce, 690, 400, width/6, height/4.5);
    showFire = false;
    showimage2 = false; // cannot have a heatwave during negative temperatures
  }
  
  if (showFire == true){ // if conditions are too warm
   image(imgFire, 690, 400, width/6, height/4.5); 
   showIce = false;
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
