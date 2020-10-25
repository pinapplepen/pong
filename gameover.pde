void gameover() {
  if (leftscore > rightscore) {
   textSize(100);
   fill(255);
   text("Cyan Wins!", 225, 400);

    
  } else {
   textSize(100);
   fill(255);
   text("lIME WINS!", 225, 400);
  }
  
}

void gameoverClicks() {
  mode = INTRO;
  leftscore = 0;
  rightscore = 0;
}
