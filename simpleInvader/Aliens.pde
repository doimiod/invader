class Aliens{  
  int dx=1;
  int dy=1;
  int x;
  int y;
  int count=1;
  int yVariable;
  boolean hasBomb = false;
 PImage explodeimage;
 PImage myimage;
 color Invadercolor;
 Bomb aBomb;
 Aliens(int xpos, int ypos){
    x=xpos;y=ypos;
    myimage= loadImage("spacer.GIF");
    explodeimage= loadImage("exploding.GIF");
   // aBomb= new Bomb(xpos, ypos);
  } 
  void move(){
    x+=dx;
    y+=dy;
    yVariable = yVariable+dy;
  if((x>0 && x<SCREENX-myimage.width) || yVariable==myimage.height){dy=0;}
else {dy=1;}
if ((yVariable==myimage.height) && ((x==SCREENX-myimage.width)||x==0)){count=count+1;yVariable=0;}
if (dy==1)dx=0;
else if (count%2==0)dx=-1;
else if (count%2==1)dx=1;
}
void draw(){
  image(myimage, x, y);
}

void die(){
  myimage=explodeimage; image(myimage,x,y);
}

/*void getBomb(){
if(exploded==false){
if(hasBomb == false){
    if((int)random(100)>=10){
    //emitBomb=true;
    theBomb.move();
    hasBomb =true;
    }

}


}


}*/


}
