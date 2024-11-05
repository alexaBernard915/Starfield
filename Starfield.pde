Particle [] army; 

class Particle{
  double myX, myY, mySpeed, myAngle;
  int myColor, mySize;
  
  Particle(){
    myX = 200;
    myY = 200;
    mySpeed = Math.random()*10;
    myAngle = Math.random()*2*Math.PI;
    mySize = (int)(Math.random()*5)+3;
    myColor = color((int)(Math.random()*256), 50, 50);
  }
  //end of constructor
 
  
  void move(){
    myX += cos((float)myAngle)*mySpeed; 
    myY += sin((float)myAngle)*mySpeed; 
  }
  
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY, mySize, mySize); 
  }
  
}
//end of particle class

class OddBall extends Particle{
  OddBall(){
    myX = 200; 
    myY = 200; 
    mySpeed = 3;
    myAngle = Math.PI/2;
    myColor = color(170,170,170); 
    mySize = 15; 
  }
  
}
//end of oddball 

void setup(){
  size (400,400); 
  army = new Particle[100];
  army[0] = new OddBall();
  for(int i = 1; i<army.length; i++){
    army[i] = new Particle();
  }
}

void draw(){
  background(0,0,0);
  for(int i = 0; i<army.length; i++){
    army[i].move();
    army[i].show();
  }
}
