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

//---------------------------//
//-------DRAWING CROPS-------//
//---------------------------//

void drawCrops() {
  //if arraylist only has one, color all that one colour
  println("myCrops has size", myCrops.size());
  if (myCrops.size() == 1) {
    if (myCrops.get(0).equals("Corn")) {
      // myCrops.get(0).colourCorn();
      print("Ahhh!");
    } 
     if (myCrops.get(0).equals("Wheat"))
      //myCrops.get(0).colourWheat();

     if (myCrops.get(0).equals("Oats"));
        // myCrops.get(0).colourOats();
      
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
              // myCrops.get(index).colourCorn();

              if (myCrops.get(index).equals("Wheat"))
                // myCrops.get(index).colourWheat();

                if (myCrops.get(index).equals("Oats"))
                  // myCrops.get(index).colourOats();

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
          // myCrops.get(index).colourCorn();

          if (myCrops.get(index).equals("Wheat"))
            // myCrops.get(index).colourWheat();

            if (myCrops.get(index).equals("Oats"))
              //  myCrops.get(index).colourOats();

              circle(cropX, cropY, d);
        circle(cropX, cropY+h, d);
        rect(cropX - d/2, cropY, d, h);

        cropX += 87;
      }
      index++;
    }
  }
}
