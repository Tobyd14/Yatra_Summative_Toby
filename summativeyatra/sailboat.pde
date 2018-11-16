class sailboat{
  float x;
  float y;
  PImage sailboat;
  float Scene= 0;
  sailboat() {
   sailboat = loadImage("sailboat.png");
   waterbottle = loadImage("water.png");
  sailboat.resize(200,200);
  waterbottle.resize(50,50);
    x=0;
    y=560;}
  void render() {
      image(sailboat, x, y);
  }
  //sailboat
  void move() {
    if (x > width) {
      x=0;}}}
