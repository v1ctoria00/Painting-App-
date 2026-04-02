//victoria 
//paining app (checkpoint 2)

color base      = #ff006a;
color back      = #ebc7d6;
color strk      = #ffc4dd;
color lightpink = #e37fa9;
color midpink   = #ed649d;
color darkpink  = #b33b6d;
//
color selectedColor;

void setup() {
  size(800, 600);
  background(back);
  strokeWeight(6);
  stroke(strk); 
}

void draw() {
  
  //rect (is changing color)
  fill(selectedColor);
  rect(150, 100, 500, 200, 10);
  
  //sqaqaqaqqaqqqaqaaq (buttons)
  fill(lightpink);
  rect(150, 400, 120, 120);
  
  fill(midpink);
  circle(400, 400, 120);
  
  fill(darkpink);
  circle(650, 400, 120);
}
  
void mouseReleased() {
  //lightpink button 
  if (dist(150, 400, mouseX, mouseY) < 50) {
    selectedColor = lightpink;
  }
  //midpink button 
  if (dist(400, 400, mouseX, mouseY) < 50) {
    selectedColor = midpink;
  }
  //darkyellow button
  if (dist(650, 400, mouseX, mouseY) < 50) {
    selectedColor = darkYell;
  }
}
