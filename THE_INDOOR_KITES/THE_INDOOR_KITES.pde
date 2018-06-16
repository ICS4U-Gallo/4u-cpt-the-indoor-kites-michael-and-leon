Game game;
PImage img;
void settings(){
  size(800,800);
  img=loadImage("back.png");
  game=new Game();
}

void draw(){
  image(img,0,0);
  game.update();
}

void keyPressed(){
  game.keyp();
}

void keyReleased(){
  game.keyr();
}
