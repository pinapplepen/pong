void game() {
  if (bSelect == 1) {
  background(0);
  }
  
  if (bSelect == 2) {
  image(bg2, 0, 0, 800, 800);
  }
  
  if (bSelect == 3){
  image(bg3, 0, 0, 800, 800);
  }
  
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
  if (wkey == true && lefty > balld) lefty = lefty - 5;
  if (skey == true && lefty < height - balld) lefty = lefty + 5;
  
  if (AI == false) {
  if (upkey == true && righty > balld) righty = righty - 5;
  if (downkey == true && righty < height - balld) righty = righty + 5;
  
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
    score.rewind();
    score.play();
  }

  if (ballx > 800) {
    leftscore = leftscore + 1;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    score.rewind();
    score.play();
  }
  
  if (leftscore == 3) {
    mode = GAMEOVER;
    clapping.rewind();
    clapping.play();
  }
  
  
  if (rightscore == 3) {
    mode = GAMEOVER;
    clapping.rewind();
    clapping.play();
  }

  //Distance between targets
  d = dist(leftx, lefty, ballx, bally);
  d2 = dist(rightx, righty, ballx, bally);

  //Bounce off walls
  if (bally <= balld/2 || bally >= height - balld/2) {
    vy = vy * -1;
    wall.rewind();
    wall.play();
  }

  //Left paddle bounce
  if (d <= leftd/2 + balld/2) {
    leftPaddle.rewind();
    leftPaddle.play();
    vx = (ballx - leftx)/20;
    vy = (bally - lefty)/20;
  }

  //right paddle bounce
  if (d2 <= rightd/2 + balld/2) {
    rightPaddle.rewind();
    rightPaddle.play();
    vx = (ballx - rightx)/20;
    vy = (bally - righty)/20;
  }
 
}


void gameClicks() {
  mode = PAUSE;
}
