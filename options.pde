void options() {
 background(0);
 strokeWeight(5);
 stroke(255);
 tactile(150, 500, 200, 100);
 line(150, 500, 150, 600);
 line(350, 500, 350, 600);
 line(150, 500, 350, 500);
 line(150, 600, 350, 600);
 textSize(50);
 text("Solo", 165, 565);

 
 //Options
 strokeWeight(5);
 stroke(255);  
 tactile(450, 500, 200, 100);
 line(450, 500, 450, 600);
 line(650, 500, 650, 600);
 line(450, 500, 650, 500);
 line(450, 600, 650, 600);
 textSize(50);
 text("Duo", 490, 565);
  
 //Selected
 if (AI == true) { 
   stroke(tact);
   strokeWeight(10);
   line(150, 500, 150, 600);
   line(350, 500, 350, 600);
   line(150, 500, 350, 500);
   line(150, 600, 350, 600);
   
 }
 
 if (AI == false) {
    stroke(tact);
    strokeWeight(10);
    line(450, 500, 450, 600);
    line(650, 500, 650, 600);
    line(450, 500, 650, 500);
    line(450, 600, 650, 600);
   
 }
 
 
 //Back
 
 strokeWeight(5);
 textSize(40);
 fill(0);
 tactile(325, 650, 150, 75);
 rect(325, 650, 150, 75);
 fill(250);
 text("back", 335, 700);
}

void optionClicks() {
  //1 player
  if (mouseX > 150 && mouseX < 350 && mouseY > 500 && mouseY < 600) {
    AI = true;
  }
  
  if (mouseX > 450 && mouseX < 650 && mouseY > 500 && mouseY < 600) {
    AI = false;
  }
  
  if (mouseX > 325 && mouseX < 475 && mouseY > 650 && mouseY < 725) {
    mode = INTRO;
  }
  
  
}
