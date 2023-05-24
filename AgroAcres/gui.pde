//@@ -1,338 +1,340 @@
/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.
 
 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
 // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:MainTab:504404:
  appc.background(230);
} //_CODE_:MainTab:504404:

public void tempSlider_clicked(GCustomSlider source, GEvent event) { //_CODE_:tempSlider:211877:

  temperature = tempSlider.getValueF();  
  //season_click s = new season_click();

  // if the temperature is too warm (more than 30 degrees)
  if (temperature > 30) {
    cornCond = "wilt";
    oatCond = "wilt";
    wheatCond = "wilt";
    //s.season_click = "Spring";
  }

  // if the temperature is too cold (less than 20 degrees)
  if (temperature < 20) {
    cornCond = "freeze";
    oatCond = "freeze";
    wheatCond = "freeze";
  }

  // if the temperature is ideal (between 20 to 30 degrees)
  if (temperature >= 20 && temperature <= 30) {
    if (temperature > 25) {
      oatCond = "hot";
      wheatCond = "hot"; 
      cornCond = "normal";
    } else {
      oatCond = "normal";
      wheatCond = "normal";
      cornCond = "normal";
    }
  }
} //_CODE_:tempSlider:211877:

public void cloudWeather(GOption source, GEvent event) { //_CODE_:CloudyW:235106:
  //when cloudy weather is selected, show image & delete other images 
  if ( weatherClicked ) {
    showimage = true;
    showimage2 = false;
    showimage3 = false;
    showimage4 = false;
    showimage5 = false;
    selectCloudy();
  } else {
  }
} //_CODE_:CloudyW:235106:

public void heatWeather(GOption source, GEvent event) { //_CODE_:HWW:515739:
  //when heatwave weather is selected, show image & delete other images
  if ( weatherClicked ) {
    showimage2 = true;
    showimage = false;
    showimage3 = false;
    showimage4 = false;
    showimage5 = false;
    selectHeat();
  } else {
  }
} //_CODE_:HWW:515739:

public void rainWeather(GOption source, GEvent event) { //_CODE_:RW:791619:
  //when rainy weather is selected, show image & delete other images
  if ( weatherClicked ) {
    showimage3 = true;
    showimage = false;
    showimage2 = false;
    showimage4 = false;
    showimage5 = false;
    selectRain();
  } else {
  }
} //_CODE_:RW:791619:

public void snowyWeather(GOption source, GEvent event) { //_CODE_:SW:627880:
  //when snowy weather is selected, show image & delete other images
  if ( weatherClicked ) {
    showimage4 = true;
    showimage = false;
    showimage2 = false;
    showimage3 = false;
    showimage5 = false;
    selectSnow();
  } else {
  }
} //_CODE_:SW:627880:

public void stormyWeather(GOption source, GEvent event) { //_CODE_:STW:858856:
  //when stormy weather is selected, show image & delete other images
  if ( weatherClicked ) {
    showimage5 = true;
    showimage = false;
    showimage2 = false;
    showimage3 = false;
    showimage4 = false;
    selectStormy();
  } else {
  }
} //_CODE_:STW:858856:

public void sunnyWeather(GOption source, GEvent event) { //_CODE_:SUW:543056:
  //when sunny weather is selected, delete all images
  if ( weatherClicked ) {
    showimage = false;
    showimage2 = false;
    showimage3 = false;
    showimage4 = false;
    showimage5 = false;
  } else {
  }
} //_CODE_:SUW:543056:

public void Corn_clicked(GCheckbox source, GEvent event) { //_CODE_:Corn:591166:
  Crop c = new Crop("Corn", 15, 28);
  myCrops.add(c);
} //_CODE_:Corn:591166:

public void Oats_clicked(GCheckbox source, GEvent event) { //_CODE_:Oats:608444:
  Crop o = new Crop("Oats", 20, 25);
  myCrops.add(o);
} //_CODE_:Oats:608444:

public void Wheat_clicked(GCheckbox source, GEvent event) { //_CODE_:Wheat:206827:
  Crop w = new Crop("Wheat", 21, 24);
  myCrops.add(w);
}

public void dN_buttonClicked(GButton source, GEvent event) { //_CODE_:Wheat:206827:
  //when button is clicked
  if ( clicked ) {
    clicked = false;
    DNbutton.setText("Night"); //rename it night
    drawSunMoon(); //draw sun
  } else { //otherwise
    clicked = true;
    DNbutton.setText("Day"); //rename it day
    drawSunMoon(); //draw moon
  }
} //_CODE_:DNbutton:688493:

public void Man_buttonClicked(GButton source, GEvent event) { //_CODE_:DNbutton:688493:
  argoScreen = 1; // main screen

  if ( clicked ) { //ONLY when button is clicked
    clicked = true; 
    Resetbutton.setText("Back to home"); //make it say "back to home"
  }
} //_CODE_:Manbutton:763312:

public void Reset_buttonClicked(GButton source, GEvent event) { //_CODE_:Manbutton:763312:
  clear(); //clear everything
  if ( clicked) { //when button is clicked
    clicked = false;
    Resetbutton.setText("Reset"); //set text to say reset
  }
} //_CODE_:Resetbutton:237767:

public void season_click(GDropList source, GEvent event) { //_CODE_:SeasonDrop:246162:
  String s = SeasonDrop.getSelectedText(); //calling on variables 
  
  //when temperature is between these settings, it will also change the background colour 
  if (s.equals("Spring") || temperature >= 10 && temperature <= 20) //spring
    bgColour = color(93, 194, 50); //change background colour to light green

  if (s.equals("Summer") || temperature >= 30) //summer
    bgColour = color(50, 168, 82); //change background colour to darker green

  if (s.equals("Winter") || temperature <= 0) //winter
    bgColour = color(150, 200, 233); //change background colour to light blue

  if (s.equals("Autumn") || temperature <= 10 && temperature > 0) //autumn 
    bgColour = color(200, 60, 40); //change background colour to red
} //_CODE_:SeasonDrop:246162:

// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI() {
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  MainTab = GWindow.getWindow(this, "Window title", 0, 0, 300, 370, JAVA2D);
  MainTab.noLoop();
  MainTab.setActionOnClose(G4P.KEEP_OPEN);
  MainTab.addDrawHandler(this, "win_draw1");
  Crop_label = new GLabel(MainTab, 20, 20, 100, 20);
  Crop_label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Crop_label.setText("Crops");
  Crop_label.setLocalColorScheme(GCScheme.RED_SCHEME);
  Crop_label.setOpaque(true);
  Weather_label = new GLabel(MainTab, 150, 20, 120, 20);
  Weather_label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Weather_label.setText("Weather");
  Weather_label.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  Weather_label.setOpaque(true);
  tempSlider = new GCustomSlider(MainTab, 260, 200, 159, 100, "grey_blue");
  tempSlider.setShowLimits(true);
  tempSlider.setRotation(PI/2, GControlMode.CORNER);
  tempSlider.setLimits(0.5, -10.0, 35.0);
  tempSlider.setNbrTicks(20);
  tempSlider.setStickToTicks(true);
  tempSlider.setShowTicks(true);
  tempSlider.setNumberFormat(G4P.DECIMAL, 2);
  tempSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  tempSlider.setOpaque(false);
  tempSlider.addEventHandler(this, "tempSlider_clicked");
  Temperature_label = new GLabel(MainTab, 150, 180, 120, 20);
  Temperature_label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Temperature_label.setText("Temperature");
  Temperature_label.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  Temperature_label.setOpaque(true);
  weather = new GToggleGroup();
  CloudyW = new GOption(MainTab, 150, 40, 120, 20);
  CloudyW.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  CloudyW.setText("Cloudy");
  CloudyW.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  CloudyW.setOpaque(true);
  CloudyW.addEventHandler(this, "cloudWeather");
  HWW = new GOption(MainTab, 150, 60, 120, 20);
  HWW.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  HWW.setText("Heatwave");
  HWW.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  HWW.setOpaque(true);
  HWW.addEventHandler(this, "heatWeather");
  RW = new GOption(MainTab, 150, 80, 120, 20);
  RW.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  RW.setText("Rain");
  RW.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  RW.setOpaque(true);
  RW.addEventHandler(this, "rainWeather");
  SW = new GOption(MainTab, 150, 100, 120, 20);
  SW.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  SW.setText("Snowy");
  SW.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  SW.setOpaque(true);
  SW.addEventHandler(this, "snowyWeather");
  STW = new GOption(MainTab, 150, 120, 120, 20);
  STW.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  STW.setText("Stormy");
  STW.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  STW.setOpaque(true);
  STW.addEventHandler(this, "stormyWeather");
  SUW = new GOption(MainTab, 150, 140, 120, 20);
  SUW.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  SUW.setText("Sunny");
  SUW.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  SUW.setOpaque(true);
  SUW.addEventHandler(this, "sunnyWeather");
  weather.addControl(CloudyW);
  weather.addControl(HWW);
  weather.addControl(RW);
  weather.addControl(SW);
  weather.addControl(STW);
  weather.addControl(SUW);
  SUW.setSelected(true);
  Corn = new GCheckbox(MainTab, 20, 40, 100, 20);
  Corn.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Corn.setText("Corn");
  Corn.setLocalColorScheme(GCScheme.RED_SCHEME);
  Corn.setOpaque(true);
  Corn.addEventHandler(this, "Corn_clicked");
  Oats = new GCheckbox(MainTab, 20, 60, 100, 20);
  Oats.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Oats.setText("Oats");
  Oats.setLocalColorScheme(GCScheme.RED_SCHEME);
  Oats.setOpaque(true);
  Oats.addEventHandler(this, "Oats_clicked");
  Wheat = new GCheckbox(MainTab, 20, 80, 100, 20);
  Wheat.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Wheat.setText("Wheat");
  Wheat.setLocalColorScheme(GCScheme.RED_SCHEME);
  Wheat.setOpaque(true);
  Wheat.addEventHandler(this, "Wheat_clicked");
  DNbutton = new GButton(MainTab, 30, 115, 80, 30);
  DNbutton.setText("Night");
  DNbutton.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  DNbutton.addEventHandler(this, "dN_buttonClicked");
  TempCold_label = new GLabel(MainTab, 120, 200, 80, 20);
  TempCold_label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  TempCold_label.setText("Cold");
  TempCold_label.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  TempCold_label.setOpaque(true);
  TempHot_label = new GLabel(MainTab, 120, 340, 80, 20);
  TempHot_label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  TempHot_label.setText("Hot");
  TempHot_label.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  TempHot_label.setOpaque(true);
  Manbutton = new GButton(MainTab, 30, 330, 80, 30);
  Manbutton.setText("Back to Manual");
  Manbutton.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  Manbutton.addEventHandler(this, "Man_buttonClicked");
  Resetbutton = new GButton(MainTab, 30, 290, 80, 30);
  Resetbutton.setText("Reset");
  Resetbutton.addEventHandler(this, "Reset_buttonClicked");
  SeasonDrop = new GDropList(MainTab, 20, 160, 100, 125, 4, 10);
  SeasonDrop.setItems(loadStrings("list_246162"), 1);
  SeasonDrop.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  SeasonDrop.addEventHandler(this, "season_click");
  MainTab.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow MainTab;
GLabel Crop_label; 
GLabel Weather_label; 
GCustomSlider tempSlider; 
GLabel Temperature_label; 
GToggleGroup weather; 
GOption CloudyW; 
GOption HWW; 
GOption RW; 
GOption SW; 
GOption STW; 
GOption SUW; 
GCheckbox Corn; 
GCheckbox Oats; 
GCheckbox Wheat; 
GButton DNbutton; 
GLabel TempCold_label; 
GLabel TempHot_label; 
GButton Manbutton; 
GButton Resetbutton; 
GDropList SeasonDrop; 
