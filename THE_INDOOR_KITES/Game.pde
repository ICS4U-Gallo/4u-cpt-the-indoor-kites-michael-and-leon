ArrayList<Obstacle>obstacles[];
ArrayList<Obstacle>enemies[];
int curRoom;
Player player;
class Game{
  int[][]directions;
  Game(){
    directions=new int[][]{{-1,1,-1,-1},{2,3,-1,0},{-1,-1,1,-1},{-1,-1,-1,1}}; // 4 rooms, 4 directions each
    player = new Player(400,400,5,50); 
    curRoom=0;
    initObs();
  }
  void initObs(){
    obstacles=new ArrayList[4];
    enemies=new ArrayList[4];
    for(int i=0;i<4;i++){
      obstacles[i]=new ArrayList<Obstacle>();
      obstacles[i].add(new Obstacle(0,-15,800,10));
      obstacles[i].add(new Obstacle(-15,0,10,800));
      obstacles[i].add(new Obstacle(0,805,800,10));
      obstacles[i].add(new Obstacle(805,0,10,800));
      enemies[i]=new ArrayList<Obstacle>();
    }
    enemies[0].add(new Enemy(50,50));
  }
  void update(){
    if(atDoor(player.x)){
      if(player.y<=15&&directions[curRoom][0]!=-1){ //up
        curRoom=directions[curRoom][0];
        player.y=740;
      }else if(player.y>=745&&directions[curRoom][2]!=-1){ //down
        curRoom=directions[curRoom][2];
        player.y=20;
      }
    }else if(atDoor(player.y)){
      if(player.x<=15&&directions[curRoom][3]!=-1){ //left
        curRoom=directions[curRoom][3];
        player.x=740;
      }else if(player.x>=745&&directions[curRoom][1]!=-1){ //right
        curRoom=directions[curRoom][1];
        player.x=20;
      }
    }
    for(Obstacle obs:obstacles[curRoom])obs.update();
    for(Obstacle en:enemies[curRoom])en.update();
    if(collides(player.x, player.y, player.size, enemies[curRoom])){
      //GAMEOVER
    }
    player.update();  
  }
  boolean atDoor(int x){
    return x>380&&x<420;
  }
  void keyp(){
    player.keyp();  
  }
  void keyr(){
    player.keyr();
  }
}
boolean collides(int x, int y, int size, ArrayList<Obstacle>obstacles){
  for(Obstacle obs:obstacles){
    if(abs(x-obs.x)<=obs.sx&&y<=obs.y+obs.sy&&y>=obs.y)return true;
    if(abs(y-obs.y)<=obs.sy&&x<=obs.x+obs.sx&&x>=obs.x)return true;
    if(abs(x-obs.x)<=obs.sx&&y+size>=obs.y&&y+size<obs.y+obs.sy)return true;
    if(abs(y-obs.y)<=obs.sy&&x+size>=obs.x&&x+size<obs.x+obs.sx)return true;
  }
  return false;
}
