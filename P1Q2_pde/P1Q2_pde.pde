// coordenadas dos nossos pontos
float Ax = 0;
float Ay = 0;
float Bx = 0;
float By = -100; // distancia entre os dois pontos (tamanho do antebraço)
float Cx = 0;
float Cy = -250; //tamanho do braço
float alpha = 0; 
void setupInicial (){
  translate(300,300);
  background(100,100,300);
  scale (1,-1);
  
}
void corPonto (){
  strokeWeight(10);
  stroke(255);
}
void corLinha (){
 strokeWeight(2);
 stroke(0);
}
void setup () {
  size(600,600);
  frameRate(60);

}

void draw() {
  setupInicial();
  corPonto();
  point(Ax,Ay); // primeiro ponto a ser controlado 
  
  // movimento superior 
  rotate(alpha);
  corLinha();
  // criando a linha que liga os dois primeiros ponto
  line (Ax,Ay,Bx,By);
  corPonto();
  point(Bx,By); // segundo ponto a ser controlado 
 
  // Movimento inferior 
  translate(-Bx,By);
  rotate(2*alpha);
   translate(Bx,-By);
  corLinha();
  line (Bx,By,Cx,Cy);
  corPonto();
  point (Cx,Cy); // terceiro ponto a ser controlado
  if (alpha < PI/6){
    alpha += PI/720;
  }
  


 
  
 
 
 
}
