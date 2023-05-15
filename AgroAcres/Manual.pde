class Manual {
  
  
  
}

void showCropInfo(){
  background(212, 207, 41);
  int nextLine = 15;
  int nextTitle = 30;
  int indent = 75;
  
  // PRINTING CORN CROP INFORMATION 
  textSize(20);
  textAlign(LEFT);
  text("CORN", indent, height/5);  
  
  textSize(15);
  text("Corn grows best in warm, sunny weather with moderate rain.", indent, height/5+nextTitle);
  text("For best results, plant in loam soil between around springtime to harvest in early fall.", indent, height/5 + nextLine+nextTitle);
  
  // PRINTING OAT CROP INFORMATION
  textSize(20);
  textAlign(LEFT);
  text("OAT", indent, height/3); 
  
  textSize(15);
  text("Oats also prefer warm, sunny weather with moderate rain. They grow best in fertile, well-drained soil.", indent, height/3+nextLine);  
  text("They should be planted during late summer and harvested in mid-summer of the following year.", indent, height/3+nextLine+nextTitle);
  
  // PRINTING WHEAT CROP INFORMATION
  textSize(20);
  textAlign(LEFT);
  text("WHEAT", indent, height/2); 
  
  textSize(15);
  text("Wheat grows best in warm temperatures with moderate rain.", indent, (height/2)+nextLine);
  text("They should be planted in clay loam in spring or fall to be harvested in the summer.", indent, (height/2)+nextLine+nextTitle); 
  
}
