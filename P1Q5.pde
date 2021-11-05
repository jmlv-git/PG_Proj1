
int r2=100;
float theta =0;
int r1=25;

void setup() {
  size(600, 600);
  frameRate(60);
  
}
void draw(){
  //###### Desenho ######
  background(0);
  translate(300,300);
  scale(1,-1);
  fill(0,0,250);
  circle(0,0,2*r2); //está ficandona frente dos circulos criados, dando a ilusao que so ha um circulo
  Float x = (r2-r1)*cos(radians(theta)); //r2-r1 é o raio maior menos o raio menor, deste modo os circulos vao ser apesnas tangentes em 1 ponto
  Float y = (r2-r1)*sin(radians(theta));
  fill(0,250,0);
  circle(x,y,2*r1);
  translate(x,y);
  rotate(-radians(theta*4));
  noStroke();
  fill(250,0,0);
  circle(0,r1,5);
  //######################
  
  theta += PI/2; 
  
}
