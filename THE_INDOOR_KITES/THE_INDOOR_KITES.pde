player player;
void settings(){
  size(800,800);

  player = new player(400,400,5,50);
}

void draw(){
  background(255);
  player.update();
}

void keyPressed(){
  player.keyp();
}

void keyReleased(){
  player.keyr();
}
