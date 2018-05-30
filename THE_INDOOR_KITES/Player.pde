class player{
  int x,y,spd,size, health;
  boolean[] keys=new boolean[8];
  player(int x1,int y1,int spd1,int size1){
    x=x1;
    y=y1;
    spd=spd1;
    size=size1;
  }


  void update(){     
    if(keys[0]==true&&y-spd>=0){
      y=y-spd;
    }
    if(keys[1]==true&&x-spd>=0){
      x=x-spd;
    }
    if(keys[2]==true){
      if(y+spd<height-size)y=y+spd;
      else y=height-size;
    }
    if(keys[3]==true){
      if(x+spd<width-size)x=x+spd;
      else x=width-size;    
    }
    rect(x,y,size,size);
  }


  void keyp(){
    if(key=='w'){
      keys[0]=true;
    }
    if(key=='a'){
      keys[1]=true;
    }
    if(key=='s'){
      keys[2]=true;
    }
    if(key=='d'){
      keys[3]=true;
    }
    if(key==CODED){
      if(keyCode==UP){
        keys[4]=true;  
      }else if(keyCode==LEFT){
        keys[5]=true;   
      }

    }
  }
  void keyr(){
    if(key=='w'){
      keys[0]=false;
    }
    if(key=='a'){
      keys[1]=false;
    }
    if(key=='s'){
      keys[2]=false;
    }
    if(key=='d'){
      keys[3]=false;
    }
  }
}
