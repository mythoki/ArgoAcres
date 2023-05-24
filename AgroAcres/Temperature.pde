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
  
  if (temperature <= 10 && temperature > 0){ // sets background to fall if between 0 and 10 degrees
    bgColour = color(200, 60, 40);
    showIce = false;
    showFire = false;
  }
  
  if (temperature >= 10 && temperature <= 20){ // sets background to spring if between 10 and 20 degrees
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
  }
  
  if (showFire == true){ // if conditions are too warm
   image(imgFire, 690, 400, width/6, height/4.5); 
   showIce = false;
  }
}
