class Crop {
  String type; //corn, wheat etc
  float prefTempMin, prefTempMax;
  float factor = 1; // factor affecting how quickly the crops adjust to temperature changes
  boolean chosen = false;
  
  float avgPrefTemp = (this.prefTempMin + this.prefTempMax)/2;
  float colourMultiplier = abs(temperature - avgPrefTemp)/2;
  float cornBValue = 37;
  float wheatBValue = 82;
  float oatBValue = 156;

  Crop(String t, float prefMin, float prefMax, boolean choice) {
    this.type = t;
    this.prefTempMin = prefMin;
    this.prefTempMax = prefMax;
    this.chosen = choice;
  }
  
  void colourCorn() {    
    if (this.prefTempMin <= temperature && this.prefTempMax >= temperature) {
      if (this.type.equals("Corn")){ 
        fill(219, 198, 37);
        this.chosen = true;
      }
      else {
        this.chosen = false;
        clear();
      }
    }
    
    else {
      cornBValue += colourMultiplier;
      fill(219, 198, cornBValue);
      this.chosen = true;
    }
    
  }
  
  void colourWheat(){
    if (this.prefTempMin <= temperature && this.prefTempMax >= temperature) {
      if (this.type.equals("Wheat")){
        fill(171, 156, 82);
        this.chosen = true;
      }
      else{
        this.chosen = false;
        clear();
      }
    }
    
    else {
      wheatBValue += colourMultiplier;
      fill(171, 156, wheatBValue);
      this.chosen = true;
    }
  
  }
  
  void colourOats(){
     if (this.prefTempMin <= temperature && this.prefTempMax >= temperature) {
       if (this.type.equals("Oats")){
        fill(217, 211, 156);
        this.chosen = true;
       }
       else{
        this.chosen = false;
        clear();
       }
     }
     
     else {
       oatBValue += colourMultiplier;
       fill(217, 211, oatBValue);
       this.chosen = true;
     } 
  }
     
}
