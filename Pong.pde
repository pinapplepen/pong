//Pong
//William Cheng
//Block 1-2B
//Oct, 18, 2020

//Sound
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Mode Framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int OPTIONS = 5;

//Entity Variables
float leftx, lefty, leftd, rightx, righty, rightd; //Paddles
float ballx, bally, balld; //Ball
float vx, vy; //Velocity
float d, d2;
boolean AI; 
int bSelect;

//Scoring
int leftscore, rightscore, timer; 

//keyboard variables
  boolean wkey, skey, upkey, downkey;
  
//Images 
PImage bg1;
PImage bg2;
PImage bg3;
PImage bg4;

//Font
PFont normal;
PFont normal2; 

//Stroke
color tact = #00F9FF;

//Sounds
Minim minim;
AudioPlayer song1;
AudioPlayer rightPaddle;
AudioPlayer leftPaddle;
AudioPlayer wall;
AudioPlayer score;
AudioPlayer clapping;

void setup() {
  size(800, 800);
  mode = INTRO;
  bSelect = 1; 
  
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
 
 //Images
 bg1 = loadImage("neonbackground.jpg");
 bg2 = loadImage("background2.jpg");
 bg3 = loadImage("bg3.jpg");
 //bg4 = loadImage("neonbackground.jpg");
 
 //Font
 normal = createFont("font.ttf", 150);
 normal2 = createFont ("font2.ttf", 150); 
 
 //Sound
 minim = new Minim(this);
 song1 = minim.loadFile("song.mp3");
 rightPaddle = minim.loadFile("rightpaddle.wav");
 leftPaddle = minim.loadFile("leftpaddle.wav");
 wall = minim.loadFile("wall.wav");
 score = minim.loadFile("score.wav");
 clapping = minim.loadFile("clapping.wav");
 
 song1.play();
 song1.loop();
 
}



void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
}
}
