 import processing.sound.*;
 SoundFile sound1, sound2, sound3;
 void setup(){
   size(400, 300);
   textSize(50);
   fill(255,0,0);
   sound1 = new SoundFile(this, "In Game Music.mp3");
   sound2 = new SoundFile(this, "Intro Song_Final.mp3");
   sound1.play();
 }
 int stage = 1;  ///1,2,3  
 void draw(){
   background(255);
   if(stage==1){
     text("stage1", 100, 100);
   }else if(stage==2){
     text("stage2", 100, 100);
   }
 }
 void mousePressed(){
   if(stage==1){
     stage=2;
     sound1.stop();
     sound2.play();
   }else if(stage==2){
     stage=1;
     sound2.stop();
     sound1.play();
   }
 }
