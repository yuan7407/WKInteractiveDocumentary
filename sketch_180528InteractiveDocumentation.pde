import processing.video.*;
PImage img;
Movie movie1;
Movie movie2;
Movie movie3;
Movie movie4;


void setup() {
  size(1920, 1080);
  background(0);
  img = loadImage("backgroundpic.png");
  // Load and play the video in a loop
  movie1 = new Movie(this, "turkey.mp4");
  movie1.loop();
  movie2 = new Movie(this, "shanghai.mp4");
  movie2.loop();
  movie3 = new Movie(this, "hongkong.mp4");
  movie3.loop();
  movie4 = new Movie(this, "skythief.mp4");
  movie4.loop();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  image(img, 0, 0);
  if (movie1.available() == true) {
    movie1.read();
  }
  if (keyCode == UP) {
    image(movie1, width/2-width/8-70, height/8-100, 640, 360);
  }
  else if (keyCode == DOWN) {
    image(movie2, width/2-width/8-70, height/2+100, 640, 360);
  }
  else if (keyCode == LEFT) {
    image(movie3, 0, height/2-height/8, 640, 360);
  }
  else if (keyCode == RIGHT) {
    image(movie4, width/2+width/8+100, height/2-height/8, 640, 360);
  }
  
  saveFrame("video/####.png");
}
