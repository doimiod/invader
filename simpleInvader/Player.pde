class Player {
int xpos; int ypos;int ypos2;
color paddlecolor = color(50);
  Player(int screen_y)
  {
    ypos=screen_y;
  }
void move(int x){
if(x>SCREENX-PADDLEWIDTH) xpos = SCREENX-PADDLEWIDTH; else xpos=x;
}
void draw() {
    fill(paddlecolor);
rect(xpos, ypos, PADDLEWIDTH, PADDLEHEIGHT); 
}
}
