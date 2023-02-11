public void setup(){
  size(700, 700);
  background(#B4FFF8);
  frameRate(10);
}



public void draw(){
  fill(#FF4740);
  translate(width/2, height/2);
  fractal(6, 0);
}

public void fractal(float x, float y){
 
  if(x == 0.5){

  scale(x);
  rotate(y * HALF_PI);

  rotate(TWO_PI/6.0);
  shape();
  rotate(TWO_PI/6.0);
  shape();
  rotate(TWO_PI/6.0);
  shape();
  rotate(TWO_PI/6.0);
  shape();
  rotate(TWO_PI/6.0);
  shape();
  rotate(TWO_PI/6.0);
  shape();
  
  scale(1/x);
  
  }else{
   
  scale(x);
  rotate(y * HALF_PI);
 
  rotate(TWO_PI/6.0);
  shape();
  rotate(TWO_PI/6.0);
  shape();
  rotate(TWO_PI/6.0);
  shape();
  rotate(TWO_PI/6.0);
  shape();
  rotate(TWO_PI/6.0);
  shape();
  rotate(TWO_PI/6.0);
  shape();
  
  scale(1/x);
  
  fractal(x - 0.5, y + 0.5);
  }
    
    fill(#FFFEE0);
    ellipse(0, 0, 30, 30);

}

public void shape(){
  beginShape();
  curveVertex(-25, 0);
  curveVertex(-25, 0);
  curveVertex(0, 50);
  curveVertex(25, 0);
  curveVertex(25, 0);
  endShape();
 
  //ellipse(0, 0, 50, 200);
}
