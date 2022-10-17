//存檔, mp3拉進來, Ctrl-K看檔案
import processing.sound.*; //音樂功能
SoundFile file1, file2, file3;
void setup(){
  file1 = new SoundFile(this, "In Game Music.mp3");
  file2 = new SoundFile(this, "sword slash.mp3");
  file3 = new SoundFile(this, "Fruit Missed.mp3");
  file1.play();
}
void draw(){

}
void mousePressed(){
  file2.play();
}
void keyPressed(){
  file3.play();
}
