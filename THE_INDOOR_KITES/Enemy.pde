class Enemy extends Obstacle{
  int spd, xd, yd, r;
  int[]d;
  Enemy(int x, int y){
   super(x,y, 30,30);
   spd=4;
   d=new int[]{-1,0,1};
   xd=0;
   yd=0;
   while(xd==0&&yd==0){
     xd=d[(int)random(0,3)];
     yd=d[(int)random(0,3)];
   }
  }
  void update(){
   while(collides(x+xd*spd,y+yd*spd,30,obstacles[curRoom])){
     xd=yd=0;
     while(xd==0&&yd==0){
       xd=d[(int)random(0,3)];
       yd=d[(int)random(0,3)];
     }
   }
   x+=xd*spd;
   y+=yd*spd;
   rect(x,y,30,30);
  }
}
