# 2022P
學習互動技術概論
# Week01
## 1. 建置環境

    桌面 > 葉正聖老師上課軟體 > Processing > 7.zip解壓縮

## 2. 畫正方
    (1) 靜態模式(剛開始)
```p
void setup(){
    size(500,500);
}
```
    (2) 動態模式(持續)
```p
void draw()
{
  background(#73E68C);
  fill(#F5FFFA);     //顏色
  rect(100,100,100,150);　　//長方形（X位置 , Y位置 , 長 , 寬）
  rect(mouseX,mouseY,100,150);
}
```

## 3. 變成網頁形式

### 3-1設定 p5.js 
    (1) 點右上角 Java > Manage...
    (2) 下載 p5 .... 

### 3-2 P語言->js
            （https://pde2js.herokuapp.com/）


## 4. 滑鼠畫圖
```p
void setup()　　///只執行一次
{   
    size(500,500);   ///畫面大小
    background(#FFFFF2);   ///背景顏色
    stroke(255,0,0);   ///畫筆顏色
}
void draw()　　///每秒60次
{   
    if(mousePressed)
    {
        line(mouseX , mouseY , pmouseX , pmouseY );   ///畫線
    }
}
void keyPressed()
{
    if (key == '1' ) stroke(#4682B4);
    if (key == '2' ) stroke(#6A5ACD);
    if (key == '3' ) stroke(#E6005C);
}
```
# Week02
## 0.做卡片
## 1.一張卡
```p
size(500,500);

int w=25;

rect(100-w/2,100-w/2,150+w,250+w,20);

fill(0,255,0);

rect(100,100,150,250,20);
```

## 2.多張卡
```p
void setup(){

  size(500,500);

}

int W=25;

void draw(){

  drawCard(100,100);

  drawCard(130,130);

  drawCard(160,160);

}

void drawCard(int x, int y){

  fill(255);

  rect(x-W/2,y-W/2,150+W,250+W,20);

  fill(#FF00F2);

  rect(x,y,150,250,20);

}
```


## 3.有字的Poker
```c++
void setup(){

  size(500,500);

}

int W=25;

void draw(){

  drawCard(100,100,"S4");

  drawCard(130,150,"H3");

  drawCard(160,200,"D5");

  drawCard(190,250,"CJ");

}

void drawCard(int x, int y, String face){

  fill(255);

  rect(x-W/2,y-W/2,150+W,250+W,20);

  fill(#FF00F2);

  rect(x,y,150,250,20);

  fill(0);

  textSize(40);

  text(face,x,y+40);

}
```



### 3-1.中文字
```c++
void setup(){

  size(500,500);

  PFont font = createFont("標楷體",40);     ///字形,大小

  textFont(font);

}

int W=25;

void draw(){

  drawCard(100,100,"黑桃4");

  drawCard(130,150,"紅心3");

  drawCard(160,200,"方塊5");

  drawCard(190,250,"梅花J");

}

void drawCard(int x, int y, String face){

  fill(255);

  rect(x-W/2,y-W/2,150+W,250+W,20);

  fill(#FF00F2);

  rect(x,y,150,250,20);

  fill(0);

  textSize(40);

  text(face,x,y+40);

}
```


### 3-2.中文字顏色
```c++
void setup(){

  size(500,500);

  PFont font = createFont("標楷體",40);

  textFont(font);

}

int W=25;

void draw(){

  drawCard(100,100,"黑桃4");

  drawCard(130,150,"紅心3");

  drawCard(160,200,"方塊5");

  drawCard(190,250,"梅花J");

}

void drawCard(int x, int y, String face){

  fill(255);

  rect(x-W/2,y-W/2,150+W,250+W,20);

  fill(#FF00F2);50,20);

  if(face.indexOf("黑桃") == -1 && face.indexOf("梅花") == -1)

    fill(#FF0000);     ///紅

  else

    fill(0);    ///黑

  textSize(40);

  text(face,x,y+40);

}
```


### 3-3.Suffle隨機抽排
```c++
void setup(){

  size(500,500);

  PFont font = createFont("標楷體",40);

  textFont(font);

  String [] flower = {"黑桃","紅心","方塊","梅花"};

  face1 = flower[int(random(4))] + int(random(13)+1);

  face2 = flower[int(random(4))] + int(random(13)+1);

  face3 = flower[int(random(4))] + int(random(13)+1);

  face4 = flower[int(random(4))] + int(random(13)+1);

}

String face1, face2, face3, face4;

void draw(){

  drawCard(100,100,face1);

  drawCard(130,150,face2);

  drawCard(160,200,face3);

  drawCard(190,250,face4);

}

void drawCard(int x, int y, String face){

  int W=25;

  fill(255);

  rect(x-W/2,y-W/2,150+W,250+W,20);

  fill(#FF00F2);

  rect(x,y,150,250,20);

  if(face.indexOf("黑桃") == -1 && face.indexOf("梅花") == -1)

    fill(255,0,0);

  else

    fill(0);

  textSize(40);

  text(face,x,y+40);

}
```



## 4.點擊洗牌
```c++
void setup(){

  size(500,500);

  PFont font = createFont("標楷體",40);

  textFont(font);

  String [] flower = {"黑桃","紅心","方塊","梅花"};

  face1 = flower[int(random(4))] + int(random(13)+1);

  face2 = flower[int(random(4))] + int(random(13)+1);

  face3 = flower[int(random(4))] + int(random(13)+1);

  face4 = flower[int(random(4))] + int(random(13)+1);

}

void mousePressed(){

  String [] flower = {"黑桃","紅心","方塊","梅花"};

  face1 = flower[int(random(4))] + int(random(13)+1);

  face2 = flower[int(random(4))] + int(random(13)+1);

  face3 = flower[int(random(4))] + int(random(13)+1);

  face4 = flower[int(random(4))] + int(random(13)+1);

}

String face1, face2, face3, face4;

void draw(){

  drawCard(100,100,face1);

  drawCard(130,150,face2);

  drawCard(160,200,face3);

  drawCard(190,250,face4);

}

void drawCard(int x, int y, String face){

  int W=25;

  fill(255);

  rect(x-W/2,y-W/2,150+W,250+W,20);

  fill(#FF00F2);

  rect(x,y,150,250,20);

  if(face.indexOf("黑桃") == -1 && face.indexOf("梅花") == -1)

    fill(255,0,0);

  else

    fill(0);

  textSize(40);

  text(face,x,y+40);

}
```

# Week03
## 0 把上週poker用自定函數mySuffle()
```p
void setup(){

  size(500,500);

  PFont font = createFont("標楷體",40);

  textFont(font);

  mySuffle();

}

void mySuffle(){

  String [] flower = {"黑桃","紅心","方塊","梅花"};

  face1 = flower[int(random(4))] + int(random(13)+1);

  face2 = flower[int(random(4))] + int(random(13)+1);

  face3 = flower[int(random(4))] + int(random(13)+1);

  face4 = flower[int(random(4))] + int(random(13)+1);

}

void mousePressed(){

  mySuffle();

}

String face1, face2, face3, face4;

void draw(){

  drawCard(100,100,face1);

  drawCard(130,150,face2);

  drawCard(160,200,face3);

  drawCard(190,250,face4);

}

void drawCard(int x, int y, String face){

  int W=25;

  fill(255);

  rect(x-W/2,y-W/2,150+W,250+W,20);

  fill(#FF00F2);

  rect(x,y,150,250,20);

  if(face.indexOf("黑桃") == -1 && face.indexOf("梅花") == -1)

    fill(255,0,0);

  else

    fill(0);

  textSize(40);

  text(face,x,y+40);

}
```


## 1 52張牌製作
```p
void setup(){

  size(700,700);

}

void draw(){

  background(#FFFFF2);

  for(int i=0;i<52;i++){

    int x = (i%10)*60; ///除法10餘數

    int y = int(i/10)*120; ///十位數

    rect(x,y,60,120);

  }

}
```



### 1-1 牌上的字
```p
void setup(){

  size(700,700);

  ///顯示中文

  PFont font = createFont("標楷體", 10);

  textFont(font);

}

String [] faces = {

  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",

  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",

  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",

  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K"};

void draw(){

  background(#FFFFF2);

  for(int i=0;i<52;i++){

    int x = (i%10)*70;

    int y = int(i/10)*120;

    fill(255);

    rect(x,y,70,120);

    fill(0);

    text(faces[i], x+25, y+80);

  }

}
```


### 1-2 每張牌變色(紅與黑)
```p
void setup(){

  size(800,600);

  ///顯示中文

  PFont font = createFont("標楷體", 16);

  textFont(font);

}

String [] faces = {

  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",

  "紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",

  "方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",

  "梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K",

};

void draw(){

  background(#FFFFF2);

  for(int i=0;i<52;i++){

    int x = (i%13)*60;

    int y = int(i/13)*120;

    fill(255);

    rect(x,y,60,120);

    if(faces[i].indexOf("紅心")==-1 && faces[i].indexOf("方塊")==-1) fill(0);

    else fill(255,0,0);

    text(faces[i], x+10, y+60);

  }

}
```


### 1-3 按一下將兩個隨機牌交換位置
```p
void setup(){

  size(800,600);

  ///顯示中文

  PFont font = createFont("標楷體", 16);

  textFont(font);

}

String [] faces = {

  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",

  "紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",

  "方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",

  "梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K",

};

void draw(){

  background(#FFFFF2);

  for(int i=0;i<52;i++){

    int x = (i%13)*60;

    int y = int(i/13)*120;

    fill(255);

    rect(x,y,60,120);

    if(faces[i].indexOf("紅心")==-1 && faces[i].indexOf("方塊")==-1) fill(0);

    else fill(255,0,0);

    text(faces[i], x+10, y+60);

  }

}

void mousePressed(){

  int a = int(random(52));

  int b = int(random(52));

  ///隨機兩個數做交換

  String temp =faces[a];

  faces[a]= faces[b];

  faces[b] = temp;

}
```

## 2 由這周交的完成上周洗牌(不重複牌的)
改第0章的程式(改成不會重複的Shuffle)
```p
void setup(){

  size(500,500);

  PFont font = createFont("標楷體",40);

  textFont(font);

  mySuffle();

}

String [] faces = {

  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",

  "紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",

  "方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",

  "梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K",

};

void mySuffle(){

  for(int k=0;k<10000;k++){

    int a = int(random(52));

    int b = int(random(52));

    ///隨機兩個數做交換

    String temp =faces[a];

    faces[a]= faces[b];

    faces[b] = temp;

  }

  face1 =faces[0];

  face2 =faces[1];

  face3 =faces[2];

  face4 =faces[3];

}

void mousePressed(){

  mySuffle();

}



String face1, face2, face3, face4;



void draw(){

  drawCard(100,100,face1);

  drawCard(130,150,face2);

  drawCard(160,200,face3);

  drawCard(190,250,face4);

}



void drawCard(int x, int y, String face){

  int W=25;

  fill(255);

  rect(x-W/2,y-W/2,150+W,250+W,20);

  fill(#FF00F2);

  rect(x,y,150,250,20);

  if(face.indexOf("黑桃") == -1 && face.indexOf("梅花") == -1)

    fill(255,0,0);

  else

    fill(0);

  textSize(40);

  text(face,x,y+40);

}
```
