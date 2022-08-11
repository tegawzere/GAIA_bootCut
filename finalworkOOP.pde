import java.util.ArrayList;
import ddf.minim.*;

Minim minim;
AudioPlayer player;

PImage bg;

Hexagons Minerva;
Hexagons Hephaestus;
Hexagons Aether;
Hexagons Poseidon;
Hexagons Demeter;
Hexagons Artemis;
Hexagons Eleuthia;
Hexagons Apollo;
Hexagons Hades;
//float rotateVal = 0.0;

boolean overMinerva = false;
boolean overHephaestus = false;
boolean overAether = false;
boolean overPoseidon = false;
boolean overDemeter = false;
boolean overArtemis = false;
boolean overEleuthia = false;
boolean overApollo = false;
boolean overHades = false;
int m =0;
float rotatePls = 0.0;

ArrayList<Hexagons> gods;
//ArrayList<HexCircle> gods_circle;

void setup (){
  size(800,800);
  bg = loadImage("purplebackground.png");
  bg.resize(800, 800);
  
  minim = new Minim(this);
  player = minim.loadFile("focus_sound.mp3");
  
  gods = new ArrayList<Hexagons>();
  //gods_circle = new ArrayList<HexCircle>();
  
  gods.add(new Hexagons(0, -390, 70, -340, -270, -220, -70, 138, 43, 226, 0, -310));//Minerva
  gods.add(new Hexagons(200, -290, 270, -240, -170, -120, 130, 255, 0, 0, 200, -210));//Hephaestus
  gods.add(new Hexagons(310, -90, 380, -40, 30, 80, 240, 240, 230, 140, 310, -10));//Aether
  gods.add(new Hexagons(210, 80, 280, 130, 200, 250, 140, 72, 209, 204, 210, 160));//Poseidon
  gods.add(new Hexagons(80, 210, 150, 260, 330, 380, 10, 0, 100, 0, 80, 290));//Demeter
  gods.add(new Hexagons(-80, 210, -10, 260, 330, 380, -150, 147, 112, 219, -80, 290));//Artemis
  gods.add(new Hexagons(-210, 80, -280, 130, 200, 250, -140, 165, 42, 42, -210, 160));//Eleuthia
  gods.add(new Hexagons(-310, -90, -380, -40, 30, 80, -240, 95, 158, 160, -310, -10));//Apollo
  gods.add(new Hexagons(-200, -290, -270, -240, -170, -120, -130, 106, 90, 205, -200, -210));//Hades
  
  //gods_circle.add(new HexCircle(0, -310, 0, -390, 70, -340, -270, -220, -70, 138, 43, 226));//Minerva 
  //gods_circle.add(new HexCircle(200, -210, 200, -290, 270, -240, -170, -120, 130, 255, 0, 0));//Hephaestus
  //gods_circle.add(new HexCircle(310, -10, 310, -90, 380, -40, 30, 80, 240, 240, 230, 140));//Aether
  //gods_circle.add(new HexCircle(210, 160, 210, 80, 280, 130, 200, 250, 140, 72, 209, 204));//Poseidon
  //gods_circle.add(new HexCircle(80, 290, 80, 210, 150, 260, 330, 380, 10, 0, 100, 0));//Demeter
  //gods_circle.add(new HexCircle(-80, 290, -80, 210, -10, 260, 330, 380, -150, 147, 112, 219));//Artemis
  //gods_circle.add(new HexCircle(-210, 160, -210, 80, -280, 130, 200, 250, -140, 165, 42, 42));//Eleuthia
  //gods_circle.add(new HexCircle(-310, -10, -310, -90, -380, -40, 30, 80, -240, 95, 158, 160));//Apollo
  //gods_circle.add(new HexCircle(-200, -210, 200, -290, -270, -240, -170, -120, -130, 106, 90, 205));//Hades
  
  
  
  //Minerva = new Hexagons(0, -390, 70, -340, -270, -220, -70, 138, 43, 226);
  //Hephaestus = new Hexagons(200, -290, 270, -240, -170, -120, 130, 255, 0, 0);
  //Aether = new Hexagons(310, -90, 380, -40, 30, 80, 240, 240, 230, 140);//last 3 color
  //Poseidon = new Hexagons(210, 80, 280, 130, 200, 250, 140, 72, 209, 204);
  //Demeter = new Hexagons(80, 210, 150, 260, 330, 380, 10, 0, 100, 0);
  //Artemis = new Hexagons(-80, 210, -10, 260, 330, 380, -150, 147, 112, 219);
  //Eleuthia = new Hexagons(-210, 80, -280, 130, 200, 250, -140, 165, 42, 42);
  //Apollo = new Hexagons(-310, -90, -380, -40, 30, 80, -240, 95, 158, 160);
  //Hades = new Hexagons(-200, -290, -270, -240, -170, -120, -130, 106, 90, 205);
}

void draw(){
  //rotateVal+=0.002;
  //pushMatrix();
  //translate(400,400);
  //rotate(rotateVal);
  //Minerva();
  //popMatrix();
  update(mouseX , mouseY);
  
  background(bg);
  fill(87, 238, 255);
  ellipse(400, 400, 300, 300);
  
  rotatePls += 0.004;
  //pushMatrix();
  //translate(width/2, height/2);
  //rotate(rotatePls);
  //Minerva.display();
  // noFill();
  // ellipse(0,-310, 150,150);
  ////Minerva.rotatecool();
  //popMatrix();
  
  for (Hexagons gods : gods) {
  pushMatrix();
  translate(width/2, height/2);
  rotate(rotatePls);
  gods.display();
  noFill();
  //ellipse(0,-310, 150,150);
  //Minerva.rotatecool();
  popMatrix();
    
}
  

}


void update(int x, int y){
  if (Minervahover( x,  y)){
  }//if(overMinerva)
  
  
  
  
  
  
}

void Minerva(){
  fill(138,43,226);
  beginShape();
  //clockwise
  vertex(400,10);
  vertex(470,60);
  vertex(470,130);
  vertex(400,180);
  vertex(330,130);
  vertex(330,60);
  endShape(CLOSE);
  
  //shapes inside 
  fill(245,255,250);
  beginShape();
  vertex(400,20);
  vertex(438,45);
  vertex(400,70);
  vertex(362,45);
  endShape(CLOSE);
  
  //left outer weird thing
  beginShape();
  vertex(355,50);
  vertex(335,65);
  vertex(335,125);
  vertex(355,140);
  vertex(375,125);
  vertex(355,110);
  vertex(355,80);
  vertex(375,65);
  endShape(CLOSE);
  
  //right outer weird thing
  beginShape();
  vertex(445,50);
  vertex(465, 65);
  vertex(465, 125);
  vertex(445,140);
  vertex(425,125);
  vertex(445,110);
  vertex(445,80);
  vertex(425, 65);
  endShape(CLOSE);
  
  //left inner weird thing 
  beginShape();
  vertex(385,80);
  vertex(373,90);
  vertex(373,100);
  vertex(385,110);
  vertex(390,105);
  vertex(390,100);
  vertex(385,95);
  endShape(CLOSE);
  
  
  
  noFill();
 
}//end Minerva 

void mousePressed(){
  println("Pressed");
  
  for (Hexagons gods : gods)
  {
    pushMatrix();
    translate(width/2, height/2);
    gods.clicked();
    popMatrix();
  }
    
  
  
    
  
  
}//end mousePressed()

boolean Minervahover(int x, int y){
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < 150/2 ) {
    return true;
    
  } else {
    return false;
  }
}
//void mouseClicked() {
  
//  for (Hexagons hexa: gods) {
//    if (hexa.isClicked(mouseX, mouseY)) {
//      return;
//    }
//  }
  
//  if (Minerva.isClicked(mouseX, mouseY)) {
//    return;
//  } else if (Hephaestus.isClicked(mouseX, mouseY)) {
//  }
//}