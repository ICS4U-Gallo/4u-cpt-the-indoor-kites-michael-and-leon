ArrayList<Obstacle>obstacles[];
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
    for(int i=0;i<4;i++){
      obstacles[i]=new ArrayList<Obstacle>();
      obstacles[i].add(new Obstacle(0,-5,800,5));
      obstacles[i].add(new Obstacle(-5,0,5,800));
      obstacles[i].add(new Obstacle(0,800,800,5));
      obstacles[i].add(new Obstacle(800,0,5,800));
    }
  }
  void update(){
    if(atDoor(player.x)){
      if(player.y<=10&&directions[curRoom][0]!=-1){ //up
        curRoom=directions[curRoom][0];
        player.y=740;
      }else if(player.y>=750&&directions[curRoom][2]!=-1){ //down
        curRoom=directions[curRoom][2];
        player.y=20;
      }
    }else if(atDoor(player.y)){
      if(player.x<=10&&directions[curRoom][3]!=-1){ //left
        curRoom=directions[curRoom][3];
        player.x=740;
      }else if(player.x==750&&directions[curRoom][1]!=-1){ //right
        curRoom=directions[curRoom][1];
        player.x=20;
      }
    }
    for(Obstacle obs:obstacles[curRoom])obs.update();
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
