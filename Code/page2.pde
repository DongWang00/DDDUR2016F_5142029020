void page2(){
  background(235, 83, 71);
  
  imageMode(CENTER);
  image(calendarImage, 180, 220, 100, 100);
  
  fill(255);
  textFont(myFont1);
  textSize(60);
  textAlign(LEFT, TOP);
  text("Month Distribution", 100, 50);
  text("#2", 10, 50);
  
  drawMonthPic();
}

void getMonthData(){
  for(int j=0; j< library.getRowCount(); j++){
    String month = library.getString(j,4);
    if(month.equals("201409")){
      trade201409 += int(library.getString(j,6));
    }
    if(month.equals("201410")){
      trade201410 += int(library.getString(j,6));
    }
    if(month.equals("201411")){
      trade201411 += int(library.getString(j,6));
    }
    if(month.equals("201412")){
      trade201412 += int(library.getString(j,6));
    }
    if(month.equals("201501")){
      trade201501 += int(library.getString(j,6));
    }
  }
}

void drawMonthPic(){
  noStroke();
  fill(255,70);
  rectMode(CORNER);
  rect(100, 150, 500, 400);
  stroke(255, 100);
  strokeWeight(1.5);
  line(130, 500, 570, 500);

  drawLine(trade201409,1,trade201410,2);
  drawLine(trade201410,2,trade201411,3);
  drawLine(trade201411,3,trade201412,4);
  drawLine(trade201412,4,trade201501,5);  
  drawPoint(trade201409,1);
  drawPoint(trade201410,2);
  drawPoint(trade201411,3);
  drawPoint(trade201412,4);
  drawPoint(trade201501,5);

  
  fill(255);
  textFont(myFont);
  textSize(14);
  textAlign(CENTER,CENTER);
  text("2014.09", 150, 515);
  text("2014.10", 250, 515);
  text("2014.11", 350, 515);
  text("2014.12", 450, 515);
  text("2015.01", 550, 515);
  textAlign(LEFT,CENTER);
  text("* Unit is yuan.", 125, 535);
  
  fill(255);
  textFont(myFont1);
  textSize(50);
  textAlign(LEFT);
  text("December", 380, 370);
  textFont(myFont);
  textSize(20);
  textAlign(LEFT);
  text("Most-fine month", 380, 400);

}

void drawPoint(int money, int i){
  stroke(255, i*50);
  strokeWeight(10);
  point(50+i*100, 500-float(money)/600000*300);
  fill(255);
  textFont(myFont);
  textSize(16);
  textAlign(CENTER,CENTER);
  text(money/100, 50+i*100, 480-float(money)/600000*300);
  
}

void drawLine(int money1, int i1, int money2, int i2){
  stroke(255, i1*50);
  strokeWeight(3);
  line(50+i1*100, 500-float(money1)/600000*300, 50+i2*100, 500-float(money2)/600000*300);
}
