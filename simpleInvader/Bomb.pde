class Bomb
{
int bombX;  
int bombY;
int radius=5;
color bombColor = color(255, 0, 0);
PFont myFont;
Bomb(/*float x, float y*/){
  bombX=200;
  bombY=0;
//bombX=200;
//bombY=0;
 /*for(int i=0; i<tp.length; i++){
   if(theBomb!=null){
bombX=tp[i].x;
bombY=tp[i].y;
   }
 }*/
}
void setting(){
myFont = createFont("Game Over",48);
}

void move(){
  //if(emitBomb==true)
bombY = bombY+5;
}

void collide(Player tp){
//if(bombX-radius <=0) dx=-dx;
//else if(x+radius>=SCREENX) dx=-dx;
if(bombY+radius >= tp.ypos &&
bombY-radius<tp.ypos+PADDLEHEIGHT &&
bombX >=tp.xpos && bombX <= tp.xpos+PADDLEWIDTH){
println("collided!"); bombCollide = true;
}
}

void draw(){
fill(bombColor);
  /*if(mousePresse==true)*///if(emitBomb==true){
 /* if(count==0)*/ellipse(bombX, bombY, radius,radius);}
 /* else if(count==1){ellipse(xpos, ypos, radius,radius); ellipse(xpos, ypos-50, radius,radius);}
  else if(count==2){ellipse(xpos+30, ypos, radius,radius); ellipse(xpos-30, ypos, radius,radius);}*/

//}

/*boolean offSceen(){


}*/

}
