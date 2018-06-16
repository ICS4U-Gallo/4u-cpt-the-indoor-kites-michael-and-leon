class Game{
  int[][]directions;
  Player player;
  int curRoom;
  Game(){
    directions=new int[][]{{-1,1,-1,-1},{2,3,-1,0},{-1,-1,1,-1},{-1,-1,-1,1}}; // 4 rooms, 4 directions each
    player = new Player(400,400,5,50); 
    curRoom=0;
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
    System.out.println(player.x+" "+player.y);
    System.out.println(curRoom);
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
