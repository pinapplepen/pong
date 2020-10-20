//Pong
//William Cheng
//Block 1-2B
//Oct, 18, 2020

//Mode Framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//Entity Variables
float leftx, lefty, leftd, rightx, righty, rightd; //Paddles
float ballx, bally, balld; //Ball
float vx, vy; //Velocity
float d, d2;

//Scoring
int leftscore, rightscore, timer; 

//keyboard variables
  boolean wkey, skey, upkey, downkey;
  
void setup() {
  size(800, 800);
  mode = GAME;
  
  //initalize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //Initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  //Initialize Velocity
  vx = random(-10, 10);
  vy = random(-10, 10);
  
  //Initialize keyboard variabless
  wkey = skey = upkey = downkey = false;
  
 //Time and points
 timer = 100; 
  
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
}
}
