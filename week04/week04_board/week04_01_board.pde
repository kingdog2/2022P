void setup(){
  size(500,500);
}
float x=250, y=250; ///位置
float vx=1.0, vy=-2.5;
float boardX, boardY=470, boardW=100, boardH=20;
void draw(){
  boardX = mouseX-boardW/2;
  background(#FFFFF2); ///背景去除殘影
  int boardX = mouseX;
  rect(boardX, boardY, boardW, boardH); ///板子(長100寬20)
  ellipse(x,y,10,10); ///橢圓
  x = x + vx;
  y = y + vy;
  if(x>500) vx = -vx;
  if(y<0) vy = -vy;
  if(x<0) vx = -vx;
  if((y>boardY && x<boardY+boardH) &&
     (x>boardX && x<boardX+boardW) ){
      vy = -vy;
      vx = (mouseX-pmouseX)/2;
  } 
  ///讓板子縮放
  if(mousePressed && mouseButton == LEFT) boardW *= 1.01;
  if(mousePressed && mouseButton == RIGHT) boardW *= 0.99;
  
}
