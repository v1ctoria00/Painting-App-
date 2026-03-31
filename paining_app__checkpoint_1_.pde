//victoria 
//paining app (checkpoint 1)

color base      = #fce5a4;
color back      = #f5f3f0;
color strk      = #f0b000;
color lightYell = #ffde82;
color midYell   = #f5cc5b;
color darkYell  = #ffc219;
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
  rect(150, 100, 500, 150, 10);
  
  //circle (buttons)
  fill(lightYell);
  circle(150, 400, 120);
  
  fill(midYell);
  circle(400, 400, 120);
  
  fill(darkYell);
  circle(650, 400, 120);
}
  
void mouseReleased() {
  //lightyellow button 
  if (dist(150, 400, mouseX, mouseY) < 50) {
    selectedColor = lightYell;
  }
  //midyellow button 
  if (dist(400, 400, mouseX, mouseY) < 50) {
    selectedColor = midYell;
  }
  //darkyellow button
  if (dist(650, 400, mouseX, mouseY) < 50) {
    selectedColor = darkYell;
  }
}
