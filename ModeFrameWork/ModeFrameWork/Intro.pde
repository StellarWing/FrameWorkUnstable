void intro() {
  background(teal);
  rect (115, 475, 245, 145); //start game
  rect (450, 475, 245, 145); //options mode
}
void introClicks() {
  if (mouseX > 115 && mouseX < 360 && mouseY > 475 && mouseY < 620) {
    mode = GAME; //start game
  }
  if (mouseX > 450 && mouseX < 695 && mouseY > 475 && mouseY < 620) {
    mode = OPTIONS; //start options
  }
}
