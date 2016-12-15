// 王栋5142029020 library_dataVisualization


PFont myFont;
PFont myFont1;

PImage coinImage;
PImage maleImage;
PImage femaleImage;
PImage logoImage;
PImage calendarImage;
Table library;
String[] account;

int a=0;
int total;
int male,female;
int bachelor,master,doctor;
float malePer,femPer;
float bacPer,masPer,docPer;
int trade201409,trade201410,trade201411,trade201412,trade201501;
int $0_5,$5_10,$10_15,$15_20,$_20;
int totalmoney;
float average;

void setup(){
  size(800, 600);
  smooth();
  coinImage = loadImage("coin.png");
  maleImage = loadImage("male.png");
  femaleImage = loadImage("female.png");
  logoImage = loadImage("logo.png");
  calendarImage = loadImage("calendar.png");
  
  account = loadStrings("account.txt");
  myFont = loadFont("Roboto-LightItalic-24.vlw");
  myFont1 = loadFont("Lobster1.3-60.vlw");
  library = loadTable("图书馆.csv","header");
  getStudentData();
  getMonthData();
  getMoneyData();
}

void draw(){
  if(a == 0){
    page0();
  } 
  if(a == 1){
    page1();
    judgePage();
  }
  if(a == 2){
    page2();
    judgePage();
  }
  if(a == 3){
    page3();
    judgePage();
  }
}

void judgePage(){
  rectMode(CENTER);
  noStroke();
  fill(255, 100);
  rect(740, 40, 100, 60);
  rect(740, 110, 100, 60);
  rect(740, 180, 100, 60);
  rect(740, 225, 100, 10);
  if(abs(mouseX-740)<50 && abs(mouseY-40)<30){
    stroke(255);
    strokeWeight(2);
    noFill();
    rect(740, 40, 100, 60);
    if(mousePressed){
      a = 1;
    }
  }
  if(abs(mouseX-740)<50 && abs(mouseY-110)<30){
    stroke(255);
    strokeWeight(2);
    noFill();
    rect(740, 110, 100, 60);
    if(mousePressed){
      a = 2;
    }
  }
  if(abs(mouseX-740)<50 && abs(mouseY-180)<30){
    stroke(255);
    strokeWeight(2);
    noFill();
    rect(740, 180, 100, 60);
    if(mousePressed){
      a = 3;
    }
  }
  if(abs(mouseX-740)<50 && abs(mouseY-225)<5){
    stroke(255);
    strokeWeight(2);
    noFill();
    rect(740, 225, 100, 10);
    if(mousePressed){
      a = 0;
    }
  }
}
