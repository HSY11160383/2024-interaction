//week08-5
//week08-4
int [][] floor = {
  {4,1,1,1,5,4,1,1,1,1,1,1,1,1,1,1,1,1,1,5},
  {4,1,1,1,5,4,1,1,1,1,1,1,1,1,1,1,1,1,1,5},
  {4,1,1,1,5,4,1,19,3,22,9,2,2,2,9,2,16,5},
};
PImage img;
PImage [] fimg = new PImage[40];
void setup(){
  size(640,480);
  img = loadImage("640x480.png");
  user = loadImage("15.png");
  for(int i = 1; i<=22; i++) fimg[i] = loadImage(i+".png");
}
int userl = 12, userJ15;
void draw(){
  //background(img);
  for(int i=0; i<3; i++){
    for(int j=0; j<20; j++){
      int now = floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
  image(user, userJ*32, userI*32);
}
void keyPressed(){
  int newI = userI, newJ = userJ;
  if(keyCode==RIGHT) newJ++;
  if(keyCode==LEFT) newJ--;
  if(keyCode==UP) newI++;
  if(keyCode==DOWN) newI--;
  if(floor[newI][newJ]!=1 && floor[newI][newJ]!=3){
    userI = newI;
    userJ = newJ;
  }
}
