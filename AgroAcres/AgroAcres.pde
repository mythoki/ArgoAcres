import g4p_controls.*;
boolean clicked = true;

import g4p_controls.*;

void setup() {
  size(900, 650);
  drawBackground();
  Manual m = new Manual();
  m.showCropInfo();
}

void drawBackground() {
  
  //if season 
  //draw this
  
  //if crop
  //draw this soil
  
  noStroke();
  fill(48, 27, 7);
  rect(75, 55, 525, 540);
  rect(55, 75, 565, 500);
  circle(75, 75, 40);
  circle(600, 75, 40);
  circle(600, 575, 40);
  circle(75, 575, 40);
  
  // MAIN
  fill(216, 241, 242);
  rect(650, 75, 225, 500);
  //rect(690
  circle(670, 75, 40);
  circle(855, 75, 40);
  circle(670, 575, 40);
  circle(855, 575, 40);
  
}
