//Painting app 

int x; 
int y;
int c;
float r;
float sliderY;
float thick;

//colour set up
color background = #FBEFEF;
color PaleBlush = #FADAD9;
color LightRose = #F3C3C5;
color SoftCoralPink = #E9ABAE;
color WarmPink = #E0959C;
color MutedRaspberry = #D78289;
color AntiqueRose = #CE6F79;
color VintagePink = #C65C69;
color White = #FFFFFF;
color SLIDEPINK = #f2b3c6;
color OUTLINE = #f7cdd4;
color SELECTOUTLINE = #ffe3f1;

color selectedColor;
color um;

color canvas;
color brush;
PImage NEWKITTY;
PImage bow;
boolean NEWKITTYOn; //true or false


////////////////////////////////////////
//setup
void setup() {
  size(800, 600);
  background(background);
  stroke(OUTLINE);
  strokeWeight(2);
  rect(0, 0, 100, 599);
  rect(687.7, 0, 112, 110);
  rect(10, 480, 80, 110);
  rect(10, 420, 80, 50);
  
  sliderY = 275;
  r = 10;
  selectedColor = SLIDEPINK;
  NEWKITTY = loadImage("NEWKITTY.png");
  NEWKITTYOn = false;
}

void draw() {
  
//basic color buttons 
  fill(um);
  stroke(OUTLINE);
  strokeWeight(2);
  
  colorSelector();
  buttonsbrushbrush();
  slider();
  
  saveButton(703, 15);
  loadButton(703, 45);
  clearButton(703, 75);
  
  tactile(10, 490, 80, 110);
  image(NEWKITTY, 10, 490, 80, 110);
}


////////////////////////////////////////
void slider() {
  strokeWeight(3);
  stroke(SLIDEPINK);
  fill(SLIDEPINK);
  line(50, 220, 50, 330);
  circle(50, sliderY, 15);
  strokeWeight(2);
}
////////////////////////////////////////
void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(OUTLINE);
  } else {
    fill(SELECTOUTLINE);
  }
}


////////////////////////////////////////
  
void mouseDragged() {
   if(NEWKITTYOn == false) {
    controlSlider();
    strokeWeight(5);
    stroke(0);
    line(pmouseX, pmouseY, mouseX, mouseY);
   } else {
   image(NEWKITTY, mouseX, mouseY, 80, 110);
   }
}

void mousePressed() {
  controlSlider();
}

////////////////////////////////////////
void colorSelector() {
  fill(selectedColor);
  rect(25, 360, 50, 30);
}

////////////////////////////////////////
void controlSlider() {
  if (mouseX > 50 && mouseX < 50 && mouseY > 245 && mouseY < 355) {
    sliderY = mouseY;
  }
}


////////////////////////////////////////
void mouseReleased() {
   if(dist(27, 50, mouseX, mouseY) < 17.5) {
   selectedColor = PaleBlush;
   }
////////buttonsbrushbrush(70, 50, LightRose);
  if(dist(70, 50, mouseX, mouseY) < 17.5) {
  selectedColor = LightRose;
  } 
/////////buttonsbrushbrush(27, 90, SoftCoralPink);   
  if(dist(27, 90, mouseX, mouseY) < 17.5) {
  selectedColor = SoftCoralPink;
  }
/////////buttonsbrushbrush(70, 90, WarmPink);
  if(dist(70, 90, mouseX, mouseY) < 17.5) {
  selectedColor = WarmPink;
  }
////////buttonsbrushbrush(27, 130, MutedRaspberry);
  if(dist(27, 130, mouseX, mouseY) < 17.5) {
  selectedColor = MutedRaspberry;
  }  
/////////buttonsbrushbrush(70, 130, AntiqueRose);
  if(dist(70, 130, mouseX, mouseY) < 17.5) {
  selectedColor = AntiqueRose;
  }
///////////buttonsbrushbrush(27, 170, VintagePink);
  if(dist(27, 170, mouseX, mouseY) < 17.5) {
    selectedColor = VintagePink;
  }
///////////buttonsbrushbrush(70, 170, White);
  if(dist(70, 170, mouseX, mouseY) < 17.5) {
    selectedColor = White;
  }
  
  if (mouseX > 703 && mouseX < 783 && mouseY > 15 && mouseY < 35) {
    selectOutput("Choose a name for your drawing!", "saveImage");
  }
  if (mouseX > 703 && mouseX < 783 && mouseY > 45 && mouseY < 65) {
    selectInput("Choose image you would like to load!", "openImage");
  }
  if (mouseX > 703 && mouseX < 783 && mouseY > 75 && mouseY < 95) {
    size(800, 600);
    background(background);
    stroke(OUTLINE);
    strokeWeight(2);
    fill(White);
    rect(0, 0, 100, 599);
    rect(687.7, 0, 112, 110);
    rect(10, 480, 80, 110);
    rect(10, 420, 80, 50);
  }
  
}

void saveButton(int x, int y) {
  if (mouseX > x && mouseX < x + 25 && mouseY > y && mouseY < y + 15) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(OUTLINE);
  rect(x, y, 80, 20);
  fill(0);
  text("SAVE", x + 25, y + 15);
}

void loadButton(int x, int y) {
  if (mouseX > x && mouseX < x + 25 && mouseY > y && mouseY < y + 15) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(OUTLINE);
  rect(x, y, 80, 20);
  fill(0);
  text("LOAD", x + 25, y + 15);
}

void clearButton(int x, int y) {
  if (mouseX > x && mouseX < x + 25 && mouseY > y && mouseY < y +15) {
    stroke(SELECTOUTLINE);
  } else { 
    stroke(OUTLINE);
  } 
  fill(OUTLINE);
  rect(x, y, 80, 20);
  fill(0);
  text("CLEAR", x + 22.5, y + 15);
}


void buttonsbrushbrush() {
////////buttonsbrushbrush(27, 50, PaleBlush);
  if(dist(27, 50, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(PaleBlush);
  circle(27, 50, 35);
  
////////buttonsbrushbrush(70, 50, LightRose);
  if(dist(70, 50, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(LightRose);
  circle(70, 50, 35);
   
/////////buttonsbrushbrush(27, 90, SoftCoralPink);   
  if(dist(27, 90, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(SoftCoralPink);
  circle(27, 90, 35);

/////////buttonsbrushbrush(70, 90, WarmPink);
  if(dist(70, 90, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else { 
    stroke(OUTLINE);
  } 
  fill(WarmPink);
  circle(70, 90, 35);
  
////////buttonsbrushbrush(27, 130, MutedRaspberry);
  if(dist(27, 130, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else { 
    stroke(OUTLINE);
  } 
  fill(MutedRaspberry);
  circle(27, 130, 35);

/////////buttonsbrushbrush(70, 130, AntiqueRose);
  if(dist(70, 130, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(AntiqueRose);
  circle(70, 130, 35);

///////////buttonsbrushbrush(27, 170, VintagePink);
  if(dist(27, 170, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else { 
    stroke(OUTLINE);
  }
  fill(VintagePink);
  circle(27, 170, 35);

///////////buttonsbrushbrush(70, 170, White);
  if(dist(70, 170, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else { 
    stroke(OUTLINE);
  } 
  fill(White);
  circle(70, 170, 35);
}
