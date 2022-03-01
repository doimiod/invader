class Bullet{
int xpos; int ypos;
//int dx;
int dy=1;
color ballColor = color(200, 100, 50);
int radius=5;
boolean mousePresse = false;
Bullet(int player_x,int screen_y)
  {
    //xpos=SCREENX/2; 
    xpos = player_x+(PADDLEWIDTH/2);
    ypos=screen_y;
  }
void move(){
ypos=ypos-3*dy;
}

void collide(Aliens[] tp1){
  for(int i=0; i<tp1.length; i++){
    if( ypos <= tp1[i].y +tp1[i].myimage.height && ypos>=tp1[i].y)
    {
      if((xpos+radius >=tp1[i].x) && (xpos <= tp1[i].x + tp1[i].myimage.height))
      {
      tp1[i].die(); exploded = true;
      }
     }
    }
  }


void draw(){
  
  fill(ballColor);
  /*if(mousePresse==true)*/
 /* if(count==0)*/ellipse(xpos, ypos, radius,radius);
 /* else if(count==1){ellipse(xpos, ypos, radius,radius); ellipse(xpos, ypos-50, radius,radius);}
  else if(count==2){ellipse(xpos+30, ypos, radius,radius); ellipse(xpos-30, ypos, radius,radius);}*/
}

}
