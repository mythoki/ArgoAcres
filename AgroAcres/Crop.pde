class Crop {
  String type; //corn, wheat etc
  color cropColour;
  float prefTempMin, prefTempMax;

  Crop(String t, float prefMin, float prefMax) {
    this.type = t;
    this.prefTempMin = prefMin;
    this.prefTempMax = prefMax;
  }
  
  void colourCrop() {    
    
    if (this.prefTempMin <= temperature && this.prefTempMax >= temperature) {
      if (crop == 0){   //corn
        color cropColour = color(219, 198, 37);
      }
      
      if (crop == 1){   //wheat
        color cropColour = color(171, 156, 82);
      }
      
      if (crop == 2){   //oats
        color cropColour = color(217, 211, 156);
      }
    }
    
    else {
      float avgPrefTemp = (this.prefTempMin + this.prefTempMax)/2;
      float colourMultiplier = abs(temperature - avgPrefTemp)/2;
      float cornBValue = 37;
      float wheatBValue = 82;
      float oatBValue = 156;
      
      if (crop == 0){
        cornBValue += colourMultiplier;
        color cropColour = color(219, 198, cornBValue);
      }
      
      if (crop == 1){
        wheatBValue += colourMultiplier;
        color cropColour = color(171, 156, wheatBValue);
      }
      
      if (crop == 2){
        oatBValue += colourMultiplier;
        color cropColour = color(217, 211, oatBValue);
      }
      
    }
      
  }
}
