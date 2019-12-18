color blue = #97B6F2;
void game() {
  background (blue);

  textSize(40);
  text("Score: " + score, 100, 100);
  text("Lives: " + lives, 100, 300);

  strokeWeight(4);
  fill(255);
  ellipse(x, y, 100, 100);


  x = x + vx;
  y = y + vy;

  //bounce top or bottom
  if (y < 0 || y > 800) vy = -vy; // or vy * -1
  if (x < 0 || x > 800) vx = -vx;
}

void gameClicks() {
  if ( dist(mouseX, mouseY, x, y) < 50) {
    score = score + 1; //or score++;
  } else {
    lives = lives - 1;
    if (lives == 0) 
      mode = GAMEOVER;
    if (lives == 0) {
      lives = 3; 
      score = 0;
    }
  }
}
