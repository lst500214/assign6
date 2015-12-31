class Bullet{
  int x = 0;
  int y = 0;
  int speed;
  PImage bulletImg;

	Bullet(int x, int y){
          this.x = x;
          this.y = y;
          speed = 5;
          bulletImg = loadImage("img/shoot.png");
	}

  void move(){
        x -= speed;     
  }
  
  void draw(){
        image(bulletImg, x, y);
  }

   boolean isCollideWithEnemy(Enemy enemys)
  {
   if(isHit(this.x, this.y, 31, 27, enemys.x , enemys.y, 61, 61)){
     return true;
   }
     return false;
    
  }

}
