void pause() {
  textSize(100);
  textMode(CENTER);
  fill(255);
  text("PAUSED" ,280, 400);
  textMode(CORNER);
}

void pauseClicks() {
  mode = GAME;
}
