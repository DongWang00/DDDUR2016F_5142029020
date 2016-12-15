void page0(){
  background(255);
  
  imageMode(CENTER);
  image(logoImage, 400, 200);
  
  noFill();
  stroke(180);
  strokeWeight(1);
  rectMode(CENTER);
  rect(400, 450, 220, 50, 5);
  
  fill(100);
  textFont(myFont);
  textSize(24);
  textAlign(CENTER,CENTER);
  text("Click to Start", 400, 448);
  
  fill(70);
  textFont(myFont1);
  textSize(60);
  textAlign(CENTER,CENTER);
  text("Library Fines\nData Visualization", 400, 330);
  
  if(abs(mouseX-400)<110 && abs(mouseY-450)<25){
    fill(200);
    stroke(200);
    strokeWeight(1);
    rectMode(CENTER);
    rect(400, 450, 220, 50, 5);
    fill(255);
    textFont(myFont);
    textSize(24);
    textAlign(CENTER,CENTER);
    text("Click to Start", 400, 448);
    
    if(mousePressed){
      a = 1;
    }
  }

}
