void intro() {
  //Background
 image(bg1, 0, 0, 800, 800);
 textSize(150);
 textFont(normal);
 text("PONG", 150, 400);
 
 //Play
 strokeWeight(5);
 stroke(255);
 tactile(150, 500, 200, 100);
 line(150, 500, 150, 600);
 line(350, 500, 350, 600);
 line(150, 500, 350, 500);
 line(150, 600, 350, 600);
 textSize(40);
 text("Start", 165, 565);

 
 //Options
 strokeWeight(5);
 stroke(255);  
 tactile(450, 500, 200, 100);
 line(450, 500, 450, 600);
 line(650, 500, 650, 600);
 line(450, 500, 650, 500);
 line(450, 600, 650, 600);
 textSize(35);
 text("Options", 455, 565);

 
}

void introClicks() {
  //Singleplayer
  if (mouseX > 150 && mouseX < 350 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
    
  }
  
  //Multiplayer
  
 
  if (mouseX > 450 && mouseX < 650 && mouseY > 500 && mouseY < 600) {
    mode = OPTIONS;
     }
  
 
}
