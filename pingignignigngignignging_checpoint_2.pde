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
  size(600, 600);
  background(back);
  strokeWeight(6);
  stroke(strk); 
  selectedColor = base;
}

void draw() {
  fill(selectedColor);
stroke(strk);
rect(100, 50, 400, 300, 10);

select(50, 450, lightpink);

select(250, 450, midpink);

select(450, 450, darkpink);
}

void select(int x, int y, color c) {
if(mouseX > x && mouseX < x + 100 && mouseY > y && mouseY < y + 100) {
  stroke(255);
  } else {
    stroke(strk);
  } 
    fill(c);
    square(x, y, 100);
}

void mouseReleased() {
  if(mouseX > 50 && mouseX < 150 && mouseY > 450 && mouseY < 550){
selectedColor = lightpink;
}

if (mouseX > 250 && mouseX < 350 && mouseY > 450 && mouseY < 550){
selectedColor = midpink;
}

if (mouseX > 450 && mouseX < 550 && mouseY > 450 && mouseY < 550) {
selectedColor = darkpink;
  }
}
