class player{
    int x,y,spd,size;
    boolean[] keys=new boolean[5];
    player(int x1,int y1,int spd1,int size1){
    x=x1;
    y=y1;
    spd=spd1;
    size=size1;
    }
    
    
    void update(){
      if(keys[1]==true){
      y=y-spd;
      }
      if(keys[2]==true){
      x=x-spd;
      }
      if(keys[3]==true){
      y=y+spd;
      }
      if(keys[4]==true){
      x=x+spd;
      }
    rect(x,y,size,size);
    }
    
    
    void keyp(){
    if(key=='w'){
    keys[1]=true;
    }
    if(key=='a'){
    keys[2]=true;
    }
    if(key=='s'){
    keys[3]=true;
    }
    if(key=='d'){
    keys[4]=true;
    }
    }
    void keyr(){
    if(key=='w'){
    keys[1]=false;
    }
    if(key=='a'){
    keys[2]=false;
    }
    if(key=='s'){
    keys[3]=false;
    }
    if(key=='d'){
    keys[4]=false;
    }
    }
    }