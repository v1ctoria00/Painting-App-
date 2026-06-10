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
boolean bowOn;


////////////////////////////////////////
//setup
void setup() {
  size(800, 600);
  background(background);

  sliderY = 275;
  r = 10;
  selectedColor = SLIDEPINK;
  NEWKITTY = loadImage("HELLOKITTYSTAMP.png");
  NEWKITTYOn = false;
  bow = loadImage("bow.png");
  bowOn = false;
}

void draw() {
  stroke(OUTLINE);
  strokeWeight(2);
  fill(White);
  rect(0, 0, 100, 599);
  rect(687.7, 0, 112, 110);

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

  tactile(10, 80, 480, 110);
  NEWKITTY();
  bow();
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
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
}

void NEWKITTY() {
  if (mouseX > 10 && mouseX < 90 && mouseY > 480 && mouseY < 590) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  if (NEWKITTYOn == true) {
    stroke(SELECTOUTLINE);
  }
  fill(White);
  rect(10, 480, 80, 110);
  image(NEWKITTY, 10, 481, 80, 110);
}


void bow() {
  if (mouseX > 10 && mouseX < 90 && mouseY > 420 && mouseY < 570) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  if (bowOn == true) {
    stroke(SELECTOUTLINE);
  }
  fill(White);
  rect(10, 420, 80, 50);
  image(bow, 10, 421, 80, 50);
}

////////////////////////////////////////

void mouseDragged() {
  if (NEWKITTYOn == false && bowOn == false && mouseX > 100) {
    strokeWeight(r);
    stroke(selectedColor);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else if (NEWKITTYOn == true && bowOn == false && mouseX > 100) {
    image(NEWKITTY, mouseX, mouseY, r*8, r*11);
  } else if (NEWKITTYOn == false && bowOn == true && mouseX > 100) {
    image(bow, mouseX, mouseY, r*8, r*5);
  } else {
    controlSlider();
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
  if (mouseX > 35 && mouseX < 65 && mouseY > 225 && mouseY < 330) {
    sliderY = mouseY;
  }
  r = map(sliderY, 220, 330, 0, 50);
}


////////////////////////////////////////
void mouseReleased() {
  if (dist(27, 50, mouseX, mouseY) < 17.5) {
    selectedColor = PaleBlush;
    NEWKITTYOn = false;
    bowOn = false;
  }
  ////////buttonsbrushbrush(70, 50, LightRose);
  if (dist(70, 50, mouseX, mouseY) < 17.5) {
    selectedColor = LightRose;
    NEWKITTYOn = false;
    bowOn = false;
  }
  /////////buttonsbrushbrush(27, 90, SoftCoralPink);
  if (dist(27, 90, mouseX, mouseY) < 17.5) {
    selectedColor = SoftCoralPink;
    NEWKITTYOn = false;
    bowOn = false;
  }
  /////////buttonsbrushbrush(70, 90, WarmPink);
  if (dist(70, 90, mouseX, mouseY) < 17.5) {
    selectedColor = WarmPink;
     NEWKITTYOn = false;
    bowOn = false;
  }
  ////////buttonsbrushbrush(27, 130, MutedRaspberry);
  if (dist(27, 130, mouseX, mouseY) < 17.5) {
    selectedColor = MutedRaspberry;
    NEWKITTYOn = false;
    bowOn = false;
  }
  /////////buttonsbrushbrush(70, 130, AntiqueRose);
  if (dist(70, 130, mouseX, mouseY) < 17.5) {
    selectedColor = AntiqueRose;
    NEWKITTYOn = false;
    bowOn = false;
  }
  ///////////buttonsbrushbrush(27, 170, VintagePink);
  if (dist(27, 170, mouseX, mouseY) < 17.5) {
    selectedColor = VintagePink;
    NEWKITTYOn = false;
    bowOn = false;
  }
  ///////////buttonsbrushbrush(70, 170, White);
  if (dist(70, 170, mouseX, mouseY) < 17.5) {
    selectedColor = White;
    NEWKITTYOn = false;
    bowOn = false;
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
  if (mouseX > 10 && mouseX < 90 && mouseY > 480 && mouseY < 590 && bowOn == false) {
    NEWKITTYOn = !NEWKITTYOn;
  }
    if (mouseX > 10 && mouseX < 90 && mouseY > 480 && mouseY < 590 && bowOn == true) {
    NEWKITTYOn = !NEWKITTYOn;
    bowOn = !bowOn;
  }
  if (mouseX > 10 && mouseX < 90 && mouseY > 420 && mouseY < 470 && NEWKITTYOn == false) {
    bowOn = !bowOn;
  }
  if (mouseX > 10 && mouseX < 90 && mouseY > 420 && mouseY < 470 && NEWKITTYOn == true) {
    bowOn = !bowOn;
    NEWKITTYOn = !NEWKITTYOn;
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

void saveImage(File f) {
  if (f != null) {
    PImage canvas = get(200, 0, width-200, height);
    canvas.save(f.getAbsolutePath());
  }
}//save image function----------------

void openImage (File f) {
  if (f != null) {
    int n =0;
    while (n < 10) {
      PImage pic = loadImage(f.getPath());
      image(pic, 100, 0, width-100, height);
      n = n+1;
    }
  }
}//load image function———————----

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
  if (dist(27, 50, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(PaleBlush);
  circle(27, 50, 35);

  ////////buttonsbrushbrush(70, 50, LightRose);
  if (dist(70, 50, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(LightRose);
  circle(70, 50, 35);

  /////////buttonsbrushbrush(27, 90, SoftCoralPink);
  if (dist(27, 90, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(SoftCoralPink);
  circle(27, 90, 35);

  /////////buttonsbrushbrush(70, 90, WarmPink);
  if (dist(70, 90, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(WarmPink);
  circle(70, 90, 35);

  ////////buttonsbrushbrush(27, 130, MutedRaspberry);
  if (dist(27, 130, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(MutedRaspberry);
  circle(27, 130, 35);

  /////////buttonsbrushbrush(70, 130, AntiqueRose);
  if (dist(70, 130, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(AntiqueRose);
  circle(70, 130, 35);

  ///////////buttonsbrushbrush(27, 170, VintagePink);
  if (dist(27, 170, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(VintagePink);
  circle(27, 170, 35);

  ///////////buttonsbrushbrush(70, 170, White);
  if (dist(70, 170, mouseX, mouseY) < 17.5) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(White);
  circle(70, 170, 35);
}
