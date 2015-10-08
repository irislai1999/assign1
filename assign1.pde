PImage bg1Img;
PImage bg2Img;
PImage flightImg;
PImage hpImg;
PImage enemyImg;
PImage treasureImg;

float enemyX,enemyY,treasureX,treasureY,bg1,bg2,hpX,hpY,flightX,flightY;


void setup(){
  size(640,480);
  bg1Img=loadImage("img/bg1.png");
  bg2Img=loadImage("img/bg2.png");
  hpImg=loadImage("img/hp.png");
  enemyImg=loadImage("img/enemy.png");
  treasureImg=loadImage("img/treasure.png");
  flightImg=loadImage("img/fighter.png");
 
  treasureX=floor(random(20,620));
  treasureY=floor(random(20,460));
  flightX=floor(random(20,620));
  flightY=floor(random(20,460));
  bg1=640;
  bg2=1280;
  enemyX=20;
  enemyY=240;
  hpX=20;
  hpY=20;
  
  }

void draw(){
 
  imageMode(CORNERS);
  image(bg1Img,bg1-640,0,bg1,480);
  image(bg2Img,bg2-640,0,bg2,480);
  fill(220,0,0);
  rectMode(CORNERS);
  rect(30,20,225,40);
  image(hpImg,hpX,hpY);
  image(enemyImg,enemyX,enemyY);
  image(treasureImg,treasureX,treasureY);
  image(flightImg,flightX,flightY);
  
  
    if(enemyX>680){
      
       enemyX=20;
       enemyY=240;
      
    }
  enemyX=enemyX+1;
  
  bg1=bg1+1;
  bg2=bg2+1;
  bg1=bg1%1280;
  bg2=bg2%1280;
  
}
 
