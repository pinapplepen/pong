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
 textFont(normal2);
 textSize(30);
 text("Using a custom background might lag the game", 150, 400);
 text("Play with the NONE background for optimal performance", 100, 450);
 textFont(normal);
 
 //Backgrounds
 textSize(50);
 text("Background Select", 60, 175);
 
 //1
 strokeWeight(3);
 fill(250, 0, 221);
 tactile(75, 200, 200, 100);
 rect(75, 200, 200, 100);
 textSize(50);
 fill(255);
 text("None",90, 270);


 
 //2
 strokeWeight(5);
 tactile(300, 200, 200, 100);
 rect(300, 200, 200, 100);
 image(bg2, 300, 200, 200, 100);
 
 //3
 strokeWeight(5);
 tactile(525, 200, 200, 100);
 rect(525, 200, 200, 100);
 image(bg3, 525, 200, 200, 100);
 
 
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
 
  if (bSelect == 1) {
  textSize(30);
  text("Selected", 75, 350);
  }
  
  if (bSelect == 2) {
  textSize(30);
  text("Selected", 300, 350);
  }
  
  
  if (bSelect == 3) {
 textSize(30);
 text("Selected", 525, 350);
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
  
  //Background
   if (mouseX > 75 && mouseX < 275 && mouseY > 200 && mouseY < 300) {
   bSelect = 1;     
  }
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 200 && mouseY < 300) {
     bSelect = 2;  
    
  }
  
  if (mouseX > 525 && mouseX < 725 && mouseY > 200 && mouseY < 300) {
     bSelect = 3;  
   
  }
  
}
