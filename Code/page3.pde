void page3(){
  background(66, 133, 244);
  
  rectMode(CORNER);
  noStroke();
  fill(255, 50);
  rect(100, 150, 500, 400);
  
  imageMode(CENTER);
  image(coinImage, 420, 250, 120, 120);
  
  fill(255);
  textFont(myFont1);
  textSize(60);
  textAlign(LEFT, TOP);
  text("Money Distribution", 100, 50);
  text("#3", 10, 50);
  
  drawMoneyPic();
}

void getMoneyData(){
  for(int j=0; j< library.getRowCount(); j++){
    int money = int(library.getString(j,6));
    if(money<500){
      $0_5 ++;
    } else if(money<1000){
      $5_10 ++;
    } else if(money<1500){
      $10_15 ++ ;
    } else if(money<2000){
      $15_20 ++ ;
    } else {
      $_20 ++ ;
    }
    totalmoney += money;
  }
  average = float(totalmoney)/library.getRowCount()/100;
  
}

void drawMoneyPic(){
  fill(255);
  textFont(myFont);
  textSize(22);
  textAlign(CENTER);
  text("Average", 530, 280);
  textFont(myFont1);
  textSize(26);
  String aver = nf(average, 1, 2);
  text("RMB "+aver, 530, 250);

  rectMode(CORNER);
  drawRect($0_5, 1, 50);
  drawRect($5_10, 2, 100);
  drawRect($10_15, 3, 150);
  drawRect($15_20, 4, 200);
  drawRect($_20, 5, 230);
  
  fill(255);
  textFont(myFont);
  textSize(14);
  textAlign(CENTER);
  text("RMB 0~5", 190, 520);
  text("RMB 5~10", 270, 520);
  text("RMB 10~15", 350, 520);
  text("RMB 15~20", 430, 520);
  text("RMB >20", 510, 520);
  textAlign(LEFT);
  text("* Unit is person-time.", 160, 540);
  
}

void drawRect(int num, int i, int alpha){
  noStroke();
  fill(255, alpha);
  rect(70+80*i , 500-300*num/1300, 80, 300*num/1300);
  
  fill(255);
  textFont(myFont);
  textSize(20);
  textAlign(CENTER);
  text(num, 110+80*i , 485-300*num/1300);
}
