//---------------------------//
//-----DRAWING DAY/NIGHT-----//
//---------------------------//

void drawSunMoon() { //tied to GUI "DNbutton"
  //sun & moon
  if (clicked == true) { // NIGHTTIME
    image(imgMoon, 690, 80, width/6, height/4.5); // adding image

    fill(0); // adding text title to clarify the meaning of the symbol
    textSize(20);
    textAlign(RIGHT);
    text("NIGHT", 800, 235);
    
  } else { // DAYTIME
    image(imgSun, 690, 80, width/6, height/4.5);

    fill(0);
    textSize(20);
    textAlign(RIGHT);
    text("DAY", 800, 235);
  }
}
