class Obstacle{
  int x, y, sx, sy;
  Obstacle(int x1,int y1, int sx1, int sy1){
    x=x1;
    y=y1;
    sx=sx1;
    sy=sy1;
  }
  void update(){
    rect(x,y,sx,sy);
  }  
}
