//Mimim minim;
//AudioPlayer bump, coin, theme, gameover; // blank out everything here when running
// import sounds before Minim minim
color teal = #008080;
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

float x, y, vx, vy;
int score, lives;


void setup() {
  x = 400;
  y = 400;
  vx = random(-3, 3);
  vy = random(-3, 3);
  score = 0;
  lives = 3;
  //  minim = new Minim(this); // blank this out when running
  //  coin     = minim.LoadFile(); // in the () put file name in it, blank it out when running
  //  bump     = minim.LoadFile(); // blank it out
  //  gameover = minim.LoadFile(); // blank it out
  //  theme    = minim.LoadFile(); // blank it out

  size(800, 800); 
  mode = INTRO;
} 

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}
