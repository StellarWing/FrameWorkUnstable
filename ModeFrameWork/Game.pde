
void game() {
  background (blue);

  textSize(40);
  text("Score: " + score, 100, 100);
  text("Lives: " + lives, 100, 300);

  strokeWeight(4);
  fill(colour);
  ellipse(x, y, 100, 100);

  noStroke();
  fill(255);
  rect(700, 0, 100, 65);
  textSize(17);
  fill(0);
  text("PAUSE", 725, 38);

  x = x + vx;
  y = y + vy;

  //bounce top or bottom
  if (y < 0 || y > 800) vy = -vy; // or vy * -1
  if (x < 0 || x > 800) vx = -vx;
}

void gameClicks() {

  if (mouseX > 700 && mouseY < 800 && mouseY > 0 && mouseY < 65) {
    mode = PAUSE;
    fade = 0;
  }

  if ( dist(mouseX, mouseY, x, y) < 50) {
    score = score + 1; //or score++; 
    coin.rewind();
    coin.play(); 
    vx = vx * 1.05;
    vy = vy * 1.05;
    highscore();
  } else if (mouseX > 700 && mouseY < 800 && mouseY > 0 && mouseY < 65) {
    mode = PAUSE;
    fade = 0;
  } else {
    bump.rewind();
    bump.play();
    lives = lives - 1;
    vx = 2;
    vy = 2;
    if (lives == 0) { 
      mode = GAMEOVER;
      vx = 2;
      vy = 2;
    }
    if (lives == 0) {
      lives = 3;
      score = 0;
    }
  }
}





// {
//  lives = lives - 1;
//  if (lives == 0) 
//   mode = GAMEOVER;
//    vx = 2;
//    vy = 2;
//  if (lives == 0) {
//   lives = 3; 

//  }
// }
//}
