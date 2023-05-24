void temperatureAdjustments() {
  
  if (temperature >= 30){ // sets background to summer if temperature is more than 30 degrees
    bgColour = color(50, 168, 82);
  }
  
  if (temperature <= 0){ // sets background to winter if below 0
    bgColour = color(150, 200, 233);
  }
  
  if (temperature <= 10 && temperature > 0){
    bgColour = color(200, 60, 40);
  }
  
  if (temperature >= 10 && temperature <= 20){
    bgColour = color(93, 194, 50);
  }
  
  // if temperature is below 20 degrees c
    // have plants slowly turn blue, display freezing crop image
    // 
    
 // if temperature is between 20 to 25 degrees (up to 30 degrees?)
   // have plants be normal, show normal crop
   
 // if temperature is greater than 30 degrees
   // have plants wilt (turn a darker color), display wilting crop image
  
}
