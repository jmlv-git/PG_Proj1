float d = 0; //Inclinação
float x = -20;//Ponto inicial
float y = 0;
int i = 1;
float angSpd = PI/240; //velocidade angular
float initCenterX = 0;
void setup() {
  size(800, 800);
  background(153);
  frameRate(60);
}

void draw() { 
  
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  stroke(255,9,9);
  translate(400,400);
  scale(1,-1);
  if(d>= PI) {
    d=0;
    initCenterX = x;
    x+= -20*pow(-2,i);
    i++;
  }
  translate(initCenterX,0);
  rotate(d);
  translate(-initCenterX,0);
  point(x,y);
  d += angSpd;
}
