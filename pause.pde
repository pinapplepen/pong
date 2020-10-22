void pause() {
  textMode(CENTER);
  text("PAUSED" ,400, 400);
  textMode(CORNER);
}

void pauseClicks() {
  mode = GAME;
}
