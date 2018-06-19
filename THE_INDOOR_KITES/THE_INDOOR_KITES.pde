Game game;
PImage img;
void settings(){
  size(800,800);
  img=loadImage("back.png");
  game=new Game();
}

void draw(){
  game.update();
}

void keyPressed(){
  if(key=='r')game=new Game();
  game.keyp();
}

void keyReleased(){
  game.keyr();
}
