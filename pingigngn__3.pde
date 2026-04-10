//victoria
//painting app (checkpoint 3)

color base      = #d6279c;
color back      = #ebc7d6;
color strk      = #ffc4dd;
color lightpink = #e37fa9;
color midpink   = #ed649d;
color darkpink  = #b33b6d;

float sliderY;
float r; 

void setup() {
  size(600, 600);
  sliderY = 300;
  r = 100;
}

void draw() {
  background(back);
  strokeWeight(10);
  stroke(lightpink);
  line(100, 50, 100, 550);
  circle(100, sliderY, 50);
  strokeWeight(5);
  stroke(lightpink);
  circle(350, 300, r);
}

void mouseDragged() {
  controlSlider();

  }

void mouseReleased() {
  controlSlider();
}

void controlSlider() {
  if (mouseX > 75 && mouseX < 125 && mouseY > 50 && mouseY < 550) {
    sliderY = mouseY;
  }
  r = map(sliderY, 50, 550, 0, 400);
}

//void mouseDragged() {
//  if (mouseX > 100 && mouseX < 700 && mouseY > 275 && mouseY < 325) {
//    d = d + 5;
//  }
//}
