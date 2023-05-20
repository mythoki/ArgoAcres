class Crop {
  String type; //corn, wheat etc
  float prefTempMin, prefTempMax;
  float factor = 1; // factor affecting how quickly the crops adjust to temperature changes

  Crop(String t, float prefMin, float prefMax) {
    this.type = t;
    this.prefTempMin = prefMin;
    this.prefTempMax = prefMax;
  }
  
  void colourCrop() {    
    
    if (this.prefTempMin <= temperature && this.prefTempMax >= temperature) {
      if (this.type == "Corn"){ 
        fill(219, 198, 37);
      }
      
      if (this.type == "Wheat"){
        fill(171, 156, 82);
      }
      
      if (this.type == "Oats"){
        fill(217, 211, 156);
      }
    }
    
    else {
      float avgPrefTemp = (this.prefTempMin + this.prefTempMax)/2;
      float colourMultiplier = abs(temperature - avgPrefTemp)/2;
      float cornBValue = 37;
      float wheatBValue = 82;
      float oatBValue = 156;
      
      if (this.type == "Corn"){
        cornBValue += colourMultiplier;
        fill(219, 198, cornBValue);
      }
      
      if (this.type == "Wheat"){
        wheatBValue += colourMultiplier;
        fill(171, 156, wheatBValue);
      }
      
      if (this.type == "Oats"){
        oatBValue += colourMultiplier;
        fill(217, 211, oatBValue);
      }      
    }    
  }
}
