float g = 0.5;
float raio = 15;
float tempo = 0;
float x = 7.5;
float y = 192.5;
float velocidadex = 2*1.604;//velocidade de x para ida e volta serem feita em 4 segundos
float velocidadey = -10;
float contframe = 0;

void setup() {
  size(400, 400);
}

void draw() {
  
  background(153);
  stroke(255, 0, 0);
  fill(255, 0, 0);
  rect(0,199,399,200);
  stroke(0,0,255);
  fill(0,255,0);
  ellipse(x, y, 15, 15);//8,5 e 192,5
  
  x = x + velocidadex;
  if(x>width-7.5 || x<7.5 ){//bateu na parede, inverte velocidadex
    velocidadex = -velocidadex;
  }
  contframe++;//contador do tempo para por na formula de baixo
  y = 192.5 + velocidadey*contframe + g*pow(contframe,2)/2; //Sorvetão
  
  if(y>192.5){//Caso onde bate no chão, para quicar de volta
      y=192.5;
      contframe=0;
    }
}
