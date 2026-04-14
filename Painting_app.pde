//Painting app 

int x; 
int y;
int c;
float r;
float sliderY;

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

color selectedColor;
PImage kitty;
PImage bow;
boolean kittyOn;
boolean bowOn;

////////////////////////////////////////
//setup
void setup() {
  size(800, 600);
  background(background);
  stroke(OUTLINE);
  strokeWeight(2);
  rect(0, 0, 100, 599);
  rect(687.7, 0, 110, 80);
  rect(10, 480, 80, 110);
  rect(10, 420, 80, 50);
  
  sliderY = 275;
  selectedColor = SLIDEPINK;
  kitty = loadImage("hello kitty.png");
  bow = loadImage("bow.png");
}

void draw() {
  buttons(x, y); 
  slider(x, y);
  
////////////////////////////////////////
  //stamp
  tactile(10, 480, 80, 110);
  strokeWeight(1);
  image(kitty, 10, 480, 80, 110);
}

void kittyOnOff() {
  if(kittyOn == true) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    
  }
  
////////////////////////////////////////
void buttons(int x, int y) {//float r, color c) {

  fill(selectedColor);
  stroke(OUTLINE);
  strokeWeight(2);
  
  fill(PaleBlush);
  circle(27, 50, 35);
  //select(27, 50, PaleBlush);
  
  fill(LightRose);
  circle(70, 50, 35);
  
  fill(SoftCoralPink);
  circle(27, 90, 35);
  
  fill(WarmPink);
  circle(70, 90, 35);
  
  fill(MutedRaspberry);
  circle(27, 130, 35);
  
  fill(AntiqueRose);
  circle(70, 130, 35);
  
  fill(VintagePink);
  circle(27, 170, 35);
  
  fill(White);
  circle(70, 170, 35);
} 

////////////////////////////////////////
void slider(int x, int y) {
  strokeWeight(3);
  stroke(SLIDEPINK);
  fill(SLIDEPINK);
  line(50, 220, 50, 330);
  strokeWeight(2);
  circle(50, sliderY, 15);
  
}


////////////////////////////////////////
void mouseDragged() {
  controlSlider();
  
  //line(pmouseX, pmouseY, mouseX, mouseY);
  }
////////////////////////////////////////
void mouseReleased() {
  controlSlider();
}
////////////////////////////////////////
void controlSlider() {
  if (mouseX > 50 && mouseX < 50 && mouseY > 245 && mouseY < 355) {
    sliderY = mouseY;
  }
  r = map(sliderY, 220, 330, 0, 10);
}
////////////////////////////////////////
if (stamp1 == true) {
  image(kitty, mouseX, mouseY);
} else if (stamp2 == true) {
  image(bow, mouseX, mouseY);
} else {
  strokeWeight(thickness);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

 


//void select(int x, int y, color c) {
