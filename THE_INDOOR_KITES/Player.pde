class Player{
  ArrayList<Projectile> projs=new ArrayList<Projectile>();
  PImage img = loadImage("player.png");
  int x,y,spd,size, health, prevm;
  boolean[] keys=new boolean[8];
  Player(int x1,int y1,int spd1,int size1){
    x=x1;
    y=y1;
    spd=spd1;
    size=size1;
    prevm=-500;
  }
  void update(){
      boolean canMove;
      if(keys[0]==true){
        canMove=true;
        for(Obstacle obs:obstacles[curRoom]){
             if(abs(x-obs.x)<=obs.sx&&y-spd<obs.y+obs.sy&&y-spd>=obs.y){ 
               y=obs.y+obs.sy+1;
               canMove=false;
               break;
             }
        }
        if(canMove)y=y-spd;
      }
      if(keys[1]==true){
        canMove=true;
        for(Obstacle obs:obstacles[curRoom]){
             if(abs(y-obs.y)<=obs.sy&&x-spd<obs.x+obs.sx&&x-spd>=obs.x){
                x=obs.x+obs.sx+1;
               canMove=false;
               break;
             }
        }
        if(canMove)x=x-spd;
      }
      if(keys[2]==true){
        canMove=true;
        for(Obstacle obs:obstacles[curRoom]){
             if(abs(x-obs.x)<=obs.sx&&y+spd+size>=obs.y&&y+spd+size<obs.y+obs.sy){
               y=obs.y-size-1;
               canMove=false;
               break;
             }
        }
        if(canMove)y=y+spd;
      }
      if(keys[3]==true){
        canMove=true;
        for(Obstacle obs:obstacles[curRoom]){
             if(abs(y-obs.y)<=obs.sy&&x+spd+size>=obs.x&&x+spd+size<obs.x+obs.sx){
               x=obs.x-size-1;
               canMove=false;
               break;
             }
        }
        if(canMove)x=x+spd;    
      }
      System.out.println(0);
    if(millis()-prevm>=250){
      if(keys[4]){
        projs.add(new Projectile(x+size/2,y+size/2,0,-10));
        prevm=millis();
      }else if(keys[5]){
        projs.add(new Projectile(x+size/2,y+size/2,-10,0)); 
         prevm=millis();
      }else if(keys[6]){
        projs.add(new Projectile(x+size/2,y+size/2,0,10)); 
        prevm=millis();
      }else if(keys[7]){
        projs.add(new Projectile(x+size/2,y+size/2,10,0));  
        prevm=millis();
      }
    }
    for(int i=0;i<projs.size();i++){
      if(!projs.get(i).update())projs.remove(i); 
    }
  image(img,x,y);
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
    }else if(keyCode==DOWN){
      keys[6]=true;
    }else if(keyCode==RIGHT){
      keys[7]=true;  
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
  if(key==CODED){
    if(keyCode==UP){
      keys[4]=false;  
    }else if(keyCode==LEFT){
      keys[5]=false;   
    }else if(keyCode==DOWN){
      keys[6]=false;
    }else if(keyCode==RIGHT){
      keys[7]=false;  
    }
  }
}
}
