//week03-6
void setup(){
  size(450,450);
}

void draw(){
background(220,179,92);
strokeWeight(2);
for(int i=0; i<9; i++){
  line (25, 25+ i*50, 425, 25 + i*50);
  line (25+i*50, 25,25 + i*50, 425);
}
ellipse(mouseX, mouseY, 45, 45);
}