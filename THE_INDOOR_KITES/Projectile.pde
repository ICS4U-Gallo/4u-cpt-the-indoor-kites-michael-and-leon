class Projectile extends Obstacle{
  int xspeed, yspeed, size;
  PImage img = loadImage("projectile.png");
  Projectile(int x1, int y1, int xs, int ys){
    super(x1,y1,15,15);
    xspeed=xs;
    yspeed=ys;
    size=15;
  }
  boolean isVal(){
   return !collides(x+xspeed, y+yspeed, size, obstacles[curRoom]); 
  }
  void update(){
    x+=xspeed;
    y+=yspeed;
    fill(0,0,0);
    text("NO",x,y-5);
    fill(255,255,255);
    rect(x,y,size,size);
   //image(img, x-((float)15)/2, y-((float)size)/2);
  }
}
