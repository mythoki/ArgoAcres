class Crop {
  String type; //corn, wheat etc
  float prefTempMin, prefTempMax;
  float factor = 1; // factor affecting how quickly the crops adjust to temperature changes
  
  float avgPrefTemp = (this.prefTempMin + this.prefTempMax)/2;
  float colourMultiplier = abs(temperature - avgPrefTemp)/2;
  float cornBValue = 37;
  float wheatBValue = 82;
  float oatBValue = 156;

  Crop(String t, float prefMin, float prefMax) {
    this.type = t;
    this.prefTempMin = prefMin;
    this.prefTempMax = prefMax;
  }
  
  void colourCrop() {
    if (this.prefTempMin <= temperature && this.prefTempMax >= temperature) {
      if (this.type.equals("Corn")) 
        fill(219, 198, 37);
        
      if (this.type.equals("Wheat"))
        fill(171, 156, 82);
        
      if (this.type.equals("Oats"))
        fill(217, 211, 156);
    }
    
    else {
      if (this.type.equals("Corn")) {
        cornBValue += colourMultiplier;
        fill(219, 198, cornBValue);
      }
        
      if (this.type.equals("Wheat")) {
        wheatBValue += colourMultiplier;
        fill(171, 156, wheatBValue);
      }
        
      if (this.type.equals("Oats")) {
        oatBValue += colourMultiplier;
        fill(217, 211, oatBValue);
      }
    }
  }
     
}
