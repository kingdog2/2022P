int [][]board={
  {4, 5, 3, 2, 1, 2, 3, 5, 4},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0, 6, 0, 0, 0, 0, 0, 6, 0},
  {7, 0, 7, 0, 7, 0, 7, 0, 7},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},//上面為黑色
  {0, 0, 0, 0, 0, 0, 0, 0, 0},//下面為紅色
  {-7, 0, -7, 0, -7, 0, -7, 0, -7},
  {0, -6, 0, 0, 0, 0, 0, -6, 0},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {-4, -5, -3, -2, -1, -2, -3, -5, -4},
};//將:1 士:2 象:3 車:4 馬:5 包:6 卒:7
String [] name={"將","士", "象","車", "馬", "包", "卒"};
String [] name2={"帥","仕", "相","俥", "傌", "炮", "兵"};
void setup(){
    size(500, 550);
    PFont font = createFont("標楷體",30);
    textFont(font);
    textAlign(CENTER,CENTER);
}
void draw() {
  background(#E3C279);
  for (int x=50; x<=450; x+=50) {
    line(x, 50, x, 250);
    line(x, 300, x, 500);
  }
  //10條
  for (int y=50; y<=500; y+=50) {
    line(50, y, 450, y);
  }
  for (int i=0; i<10; i++) {
    for (int j=0; j<9; j++) {
      int id = board[i][j];//1開始
      if( id==0) continue;//陣列麻煩回去(繼續)
      if(id>0){
        fill(255);
        ellipse(50+j*50, 50+i*50, 40, 40);
        fill(0);
        text(name[id-1], 50+j*50, 50+i*50-3); 
      }else if(id<0){
        fill(255);
        ellipse(50+j*50, 50+i*50, 40, 40);
        fill(255,0,0);
        text(name2[-id-1], 50+j*50, 50+i*50-3);
      
      } 
    }
  }
  if(handChess!=0) ellipse(mouseX,mouseY,40,40);
}
int handChess=0;
void mousePressed(){
  for(int i=0; i<10; i++){
    for(int j=0;j<9;j++){
      if(dist(mouseX,mouseY,50+j*50, 50+i*50)<20){
        handChess = board[i][j]; ///手上的棋子放到棋盤
        board[i][j]=0; ///拿在手上的 清空
      }
    }
  }
}
///放開
void mouseReleased(){ ///四捨五入
  int i = (mouseY+25-50)/50;
  int j = (mouseX+25-50)/50;
  board[i][j]=handChess; ///棋放棋盤上
  handChess = 0; ///代表手上沒棋
}
