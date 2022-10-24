String line = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
class Fruit{
  float x, y, vx, vy;
  boolean flying;
  char c;  //水果對應的字母
  PApplet sketch;  ///為了讓random可以在class裡用
  Fruit(PApplet _sketch){  //建構子: 一開始要做的事
    sketch = _sketch;
    reset();
  }
  void reset(){
    x = sketch.random(100.0, 300.0);
    y = 300;
    vx = sketch.random(-2, +2);
    vy = -13;
    flying = true;
    int i = int(random(26));
    c = line.charAt(i);
  }
  void update(){
    x += vx;
    y += vy;
    vy += 0.98/3;  //重力加速度
  }
}
