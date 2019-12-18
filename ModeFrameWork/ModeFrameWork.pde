import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound variables 
Minim minim;
AudioPlayer theme, coin, bump, gameover;

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
int score, lives, highscore;
int fade = 0;
float sliderX;

void setup() {
  x = width/2;
  y = height/2;
  vx = random(-3, 3);
  vy = random(-3, 3);
  score = 0;
  lives = 3;
  highscore = 0;
  
    
  minim = new Minim(this); // blank this out when running
  coin     = minim.loadFile("coin.wav"); // in the () put file name in it, blank it out when running
  bump     = minim.loadFile("bump.wav"); // blank it out
  gameover = minim.loadFile("gameover.wav"); // blank it out
  theme    = minim.loadFile("mario bros theme.mp3"); // blank it out

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
