/*game 1*/
PImage bg1,bg2,enemy,fighter,hp,treasure;
int hpx=floor(random(197));
int tx=floor(random(600)),ty=floor(random(441));
int ex=0,ey=floor(random(61,421));
int bgx1=641,bgx2=0;

void setup()
{
  size(641,482);

  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  treasure=loadImage("img/treasure.png");
  fighter=loadImage("img/fighter.png");
  enemy=loadImage("img/enemy.png");
  hp=loadImage("img/hp.png");  
}
void draw()
{
  //bg
  image(bg1,bgx1-640,0);
  bgx1+=3;
  bgx1%=1282;
  image(bg2,bgx2-640,0);
  bgx2+=3;
  bgx2%=1280;
  //treasure
  image(treasure,tx,ty);
  //fighter
  image(fighter,550,240);
  //enemy
  image(enemy,ex,ey);
  ex+=2;
  ex%=642;
  //rect
  fill(255,0,0);
  rect(41,23,hpx,20);
  //hp
  image(hp,30,20);
}
