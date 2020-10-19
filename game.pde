void game() {
  background(0);
  
  //scoreboard
  stroke(255);
  strokeWeight(3);
  textSize(50);
  fill(13, 255, 249);
  text(leftscore, width/4, 100);
  fill(18, 255, 55);
  text(rightscore, 3*width/4, 100);
  
  //draw paddles
  fill(13, 255, 249);
  circle(leftx, lefty, leftd);
  fill(18, 255, 55);
  circle(rightx, righty, rightd);
  
  //ball
  fill(250, 8, 255);
  circle(ballx, bally, balld);
  
  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  
  //move ball
  ballx = ballx + vx;
  bally = bally + vy;
  
  //Distance between targets
  d = dist(leftx, lefty, ballx, bally);
  d2 = dist(rightx, righty, ballx, bally);
  
  //Bounce off walls
   if (ballx < balld/2 | ballx > width - balld/2) {
    vx = vx * -1;
  }
  
  if (bally < balld/2 |bally >height - balld/2) {
    vy = vy * -1;
  }
  
  //Left paddle bounce
  if (d <= leftd/2 + balld/2) {
    vx = (ballx - leftx)/20;
    vy = (bally - lefty)/20;
    
  }
  
   //right paddle bounce
  if (d2 <= rightd/2 + balld/2) {
     vx = (ballx - rightx)/20;
     vy = (bally - righty)/20;
    
  }
  
  
  
  
  
 
}

void gameClicks() {
  
}
