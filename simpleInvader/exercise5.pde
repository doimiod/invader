final int PADDLEHEIGHT = 15;
final int PADDLEWIDTH = 50;
final int SCREENX=400;
final int SCREENY=400;
final int MARGIN = 10; 
int count;
boolean emitBomb = false;
//boolean clicked = false;
boolean collide = false;
boolean exploded = false;
boolean bombCollide;
Aliens theAliens[];
Player thePlayer;
Bullet theBullet;
Bomb theBomb;
ArrayList<Bullet> bullets;
void settings(){
size(SCREENX,SCREENY); }
void setup() {
theAliens = new Aliens[10];
theBomb = new Bomb(/*theAliens*/);
thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
//theBullet =new Bullet(SCREENY-MARGIN-PADDLEHEIGHT); 
init_array(theAliens);
theBullet = null;
bullets = new ArrayList<Bullet>();
}
void draw(){
background(255);  
move_array(theAliens);
draw_array(theAliens); 
thePlayer.move(mouseX);
thePlayer.draw();
theBomb.move();
theBomb.draw();
if(bullets.size() != 0){
    for(int i=0;i<bullets.size();i++){
      bullets.get(i).move();
      bullets.get(i).collide(theAliens);
      bullets.get(i).draw();
    }
  }

/*Bomb theBomb = theAliens[i].getBomb();
if (theBomb!= null) {
   if (theBomb.collide(thePlayer))
         // bad news for player
}*/


theBomb.collide(thePlayer);
if(theBullet != null)
theBullet.collide(theAliens);
//if (clicked==true)
//{theBullet.move();
//theBullet.draw();
//}
if(bombCollide==true){
PFont myFont = loadFont("Serif-48.vlw");
textFont(myFont);
text("Game Over", 20, 60);

}

}
void init_array(Aliens theArray[]){ 
  for(int i=0; i<theArray.length; i++)
theArray[i] = new Aliens(30*i, 0);
}
void draw_array(Aliens theArray[]){
for(int i=0; i<theArray.length; i++) theArray[i].draw();
}
void move_array(Aliens theArray[]){
for(int i=0; i<theArray.length; i++) theArray[i].move();
}
/*void getBombArray(Aliens theArray[]){
for(int i=0; i<theArray.length; i++) theArray[i].getBomb();
}*/

/*void die_array(Aliens theArray[]){
  for(int i=0; i<theAliens.length; i++){
theArray[i].die();

  }
}*/



void mousePressed(){
bullets.add(new Bullet(thePlayer.xpos ,SCREENY-MARGIN-PADDLEHEIGHT)); 
//clicked=true;
}
