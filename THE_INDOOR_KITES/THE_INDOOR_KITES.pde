player player;
void settings(){
size(800,800);
player = new player(400,400,3,50);
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