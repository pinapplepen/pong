void game() {
  background(0);

  //scoreboard
  textSize(5);
  fill(13, 255, 249);
  textFont(normal2);
  textSize(50);
  text(leftscore, width/4, 100);
  fill(18, 255, 55);
  text(rightscore, 3*width/4, 100);
  //text(timer, 3*width/4, 550);
  timer = timer - 1;

  //draw paddles
  stroke(255);
  strokeWeight(3);
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
  
  if (AI == false) {
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  
  } else {
    
    if (bally < righty) {
      righty = righty - 3; 
      
    }
    
    if (bally > righty) {
      righty = righty + 3;
    }
    
  }
 
    
    
  
  
  
  //move ball
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //Hitting top and bottom
  if (bally < balld/2) {
    bally = balld/2;
  }
  if (bally > 800 - balld/2 ) {
    bally = 800 - balld/2;
  }

  //scoring
  if (ballx < 0) {
    rightscore = rightscore + 1;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }

  if (ballx > 800) {
    leftscore = leftscore + 1;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }


  //Distance between targets
  d = dist(leftx, lefty, ballx, bally);
  d2 = dist(rightx, righty, ballx, bally);

  //Bounce off walls
  if (bally <= balld/2 || bally >= height - balld/2) {
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
  mode = PAUSE;
}
