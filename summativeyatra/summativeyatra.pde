sailboat s;
//trash/water bottle
float Xs [] = new float [3];
float Ys [] = new float [3];
float W1 [] = new float [5];
float W2 [] = new float [5];
PImage seabackground;
PImage trash;
PImage flag;
PImage waterbottle;
// audio player
import ddf.minim.*;
Minim minim;
AudioPlayer player;
void setup() {
  size(1000, 1000);  
  //pictures
  seabackground = loadImage("background.jpeg");
  seabackground.resize(1000, 1000);
  flag = loadImage("flag.png");
  waterbottle = loadImage("water.png");
  s = new sailboat();
  //music
  minim = new Minim(this);
  player = minim.loadFile("song.mp3");
  player.play();
  //trash
  if (millis() > 500) {
    for (int i=0; i<3; i++) {
      Xs[i] = random(0, width);
      Ys[i] = random(0, height);
      trash = loadImage("trash.png");
      trash.resize(70, 70);
//water bottle
      if (millis() > 500) {
        for (int a=0; a<5; a++) {
          W1[a] = random(0, width);
          W2[a] = random(0, height);
          waterbottle = loadImage("water.png");
          waterbottle.resize(50, 50);
        }
      }
    }
  }
}
void draw() {
  //background
  background(seabackground);
  //sailboat
  s.render();
  s.move();
  //trash
  for (int i=0; i<3; i++) {
    image ( trash, Xs[i], Ys[i]);
    Xs[i] = Xs[i] +- 3;
    if (Xs[i] < 0) {
      Xs[i] = width;
    }
// water bottle
    for (int a=0; a<5; a++) {
      image ( waterbottle, W1[a], W2[a]);
      W2[a] = W2[a] +-3;
      if (W2[a] < 0){
        W2[a] = height;}
    }
    // collisions but it didn't work
     //if (s.x < Xs[i] +trash.width && 
         // s.x + s.trash.width-85 > Xs[i] &&
         // s.y < Ys[i] + trash.height && 
         // s.y + s.trash.height-10 > Ys[i])
        {
          background(0);
        }
  }
  //image (flag, Xs ,Ys);
}
void keyPressed() {
  //up
  if (key == CODED)
    if (keyCode == RIGHT) {
      s.x+=8;
    }
  //down
  if (key == CODED)
    if (keyCode == LEFT ) {
      s.x-=8;
    }
  //up
  if (key == CODED)
    if (keyCode == UP) {
      s.y-=8;
    }
  //down
  if (key == CODED)
    if (keyCode == DOWN) {
      s.y+=8;
    }
  //speedup
  if (key == CODED)
    if (keyCode == ' ') {
      s.x=10;
    }
}
