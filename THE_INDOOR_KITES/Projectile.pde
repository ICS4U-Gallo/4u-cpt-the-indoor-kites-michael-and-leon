class Projectile{
  int x, y, xspeed, yspeed, size;
  PImage img = loadImage("projectile.png");
  Projectile(int x1, int y1, int xs, int ys){
    x=x1;
    y=y1;
    xspeed=xs;
    yspeed=ys;
    size=15;
  }
  boolean update(){
    if(x+xspeed<width-size&&x+xspeed>0&&y+yspeed<height-size&&y+yspeed>0){
         x+=xspeed;
         y+=yspeed;
    }else{
      return false;
    }
    image(img, x-((float)size)/2, y-((float)size)/2);
    return true;
  }
}
