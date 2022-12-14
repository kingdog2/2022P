///目標: 有個水果可以飛起來!!
///按按鍵,可以把它消掉
void setup() {
  size(400, 300);
}
float fruitX = 200, fruitY=300;  ///水果位置
float fruitVX = 2, fruitVY=-13;  ///水果速度
boolean flying = true;
void draw() {
  background(255, 255, 0);
  ellipse(fruitX, fruitY, 50, 50);
  if (flying) {  ///如果還在飛,水果位置改變
    fruitX+=fruitVX;
    fruitY+=fruitVY;
    fruitVY+=0.98/3;  ///重力加速度
  }
}
void keyPressed() {
  flying=false;
  fruitReset();  ///準備新的水果
}
void fruitReset() {
  fruitX=random(100, 300);
  fruitY=300;  ///固定高度
  fruitVX=random(-2, +2);
  fruitVY=-13;
  flying=true;
}
