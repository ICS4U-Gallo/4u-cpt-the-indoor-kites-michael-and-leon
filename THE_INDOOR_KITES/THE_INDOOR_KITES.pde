player player;
PImage img;
void settings(){
  size(800,800);
  img=loadImage("back.png");
  player = new player(400,400,5,50);
}

void draw(){
  image(img,0,0);
  player.update();
}

void keyPressed(){
  player.keyp();
}

void keyReleased(){
  player.keyr();
}
