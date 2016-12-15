void page1(){
  background(251, 200, 54);
  
  rectMode(CORNER);
  noStroke();
  fill(255, 80);
  rect(100, 150, 500, 200);
  rect(100, 370, 500, 210);

  imageMode(CENTER);
  image(maleImage, 200, 250);
  image(femaleImage, 500, 252, 186, 186);
  
  fill(255);
  textFont(myFont1);
  textSize(60);
  textAlign(LEFT, TOP);
  text("Student Distribution", 100, 50);
  text("#1", 10, 50);
  
  drawStudentPic();

}

void getStudentData(){  
  for(int i=0; i< account.length; i++){
    String[] info = split(account[i], TAB);
    String number1 = info[0];
    String gender = info[2];
    String type = info[5];
    for(int j=0; j< library.getRowCount(); j++){
      String number2 = library.getString(j,1);    
      if(number1.equals(number2)){
        total++;
        if(gender.equals("男")){
          male++;
        }
        if(gender.equals("女")){
          female++;
        }
        if(type.equals("本科")){
          bachelor++;
        }
        if(type.equals("硕士")){
          master++;
        }
        if(type.equals("博士")){
          doctor++;
        }
      }
    }
  }
  
  malePer = float(male)/total;
  femPer = float(female)/total;
  bacPer = float(bachelor)/total;
  masPer = float(master)/total;
  docPer = float(doctor)/total;
  

}

void drawStudentPic(){

  
  noStroke();
  fill(255, 150);
  arc(350, 250, 150, 150, PI/3, malePer*2*PI+PI/3, PIE);
  fill(255, 250);
  arc(350, 250, 150, 150, malePer*2*PI+PI/3, 2*PI+PI/3, PIE);
  
  fill(0);
  textFont(myFont);
  textSize(18);
  textAlign(CENTER,CENTER);
  text(float(round(1000*malePer))/10+"%", 310, 250);
  text(float(round(1000*femPer))/10+"%", 390, 250);
  
  rectMode(CORNER);
  noStroke();
  fill(255,100);
  rect(140, 390, bacPer*900, 50);
  fill(255,150);
  rect(140, 450, masPer*900, 50);
  fill(255,200);
  rect(140, 510, docPer*900, 50);
  
  fill(0);
  textFont(myFont);
  textSize(14);
  textAlign(LEFT,CENTER);
  text("Bachelor  "+bachelor+" / "+float(round(1000*bacPer))/10+"%", 150, 415);
  text("Master    "+master+" / "+float(round(1000*masPer))/10+"%", 150, 475);
  text("Doctor    "+doctor+" / "+float(round(1000*docPer))/10+"%", 150, 535);
  
}
