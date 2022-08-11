class Hexagons{
  float rotateVal = 0.0f;
  int x;
  int y; 
  int realStartx;
  int realStarty;
  int realSecondx;
  int realSecondy;
  int realThirdy;
  int realFourthy;
  int realFifthx;
  int realcolor1;
  int realcolor2;
  int realcolor3;
  int circlePosx;
  int circlePosy;
  boolean isLightsOn = false;
  
  //Hexagons(int topx, int topy, int pattern) {
  //  switch (pattern) {
  //    case 1: drawPattern1(); break;
      
  //  }
  //}
  
  Hexagons (int tempStartx, int tempStarty, int tempSecondx, int tempSecondy, int tempThirdy, int tempFourthy, int tempFifthx, int color1, int color2, int color3, int tempCirclex, int tempCircley){
  //fill(color1, color2, color3);
  //beginShape();
  ////clockwise
  //vertex(tempStartx, tempStarty);
  //vertex(tempSecondx, tempSecondy);
  //vertex(tempSecondx, tempThirdy);
  //vertex(tempStartx, tempFourthy);
  //vertex(tempFifthx, tempThirdy);
  //vertex(tempFifthx, tempSecondy);
  //endShape(CLOSE);
  realStartx = tempStartx;
  realStarty = tempStarty;
  realSecondx = tempSecondx;
  realSecondy = tempSecondy;
  realThirdy = tempThirdy;
  realFourthy = tempFourthy;
  realFifthx = tempFifthx;
  realcolor1 = color1;
  realcolor2 = color2;
  realcolor3 = color3;
  circlePosx = tempCirclex;
  circlePosy = tempCircley;
  
  }
    
  void rotatecool(){
    //float rotateVal = 0.0f;
    rotateVal+=1.22;
    pushMatrix();
    translate(400,400);
    rotate(rotateVal);
    popMatrix();
   //y--;
   //x = x + random(-2,2);
  }
  
  void display(){
  fill(realcolor1, realcolor2, realcolor3);
   beginShape();
  //clockwise
  vertex(realStartx, realStarty);
  vertex(realSecondx, realSecondy);
  vertex(realSecondx, realThirdy);
  vertex(realStartx, realFourthy);
  vertex(realFifthx, realThirdy);
  vertex(realFifthx, realSecondy);
  endShape(CLOSE);
  
  noFill();
  noStroke();
  ellipse(circlePosx, circlePosy, 150, 150);
  
  //if(isLightsOn)
  //{
  //  realcolor1 = realcolor1 - 10;
  //  realcolor2 += 10;
  //  realcolor3 += 10;
  //}
    
  
}

  //boolean isMouseOver(){
  ////float disX = circlePosx - mouseX;
  ////float disY = circlePosy - mouseY;
  //if (mouseX > circlePosx-75 && mouseX < circlePosx + 75 && mouseY > circlePosy-75 && mouseY < circlePosy+75)
  //  {
  //    println("Over a division");
  //    return true;
  //  }
  //  else{
  //    return false;
  //  }
  
  //}
  
  
  void clicked(){
    pushMatrix();
    translate(width/2, height/2);
    float d = dist(mouseX, mouseY, circlePosx, circlePosy);
    if (d < 75)
    {
      player.rewind();
      player.play();
      realcolor1 = realcolor1 - 10;
      realcolor2 += 10;
      realcolor3 += 10;
    }
    popMatrix();
  


}
  

  
 

  //void update(){
  //  if(mousePressed == true && mouseButton == LEFT && Pressed == false)
  //  {
  //    Pressed = true;
  //    if(
  //  }
    
  //}

  

}