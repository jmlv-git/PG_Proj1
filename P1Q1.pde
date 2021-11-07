float g = 0.5;
float raio = 15;
float tempo = 0;
float x = 15;
float y = 185;
velocidadex = 2*1.604;//velocidade de x para ida e volta serem feita em 4 segundos
velocidadey = -10;
contframe = 0;

void setup() {
	size(400, 400);
}

void draw() {
	
	background(153)
	stroke(255, 0, 0);
	fill(255, 0, 0);
	rect(0,199,399,200);
	stroke(0,0,255);
	fill(0,255,0);
	ellipse(x, y, 30, 30);//8,5 e 192,5
	
	x = x + velocidadex
	if(x>width-15 || x<15 ){//bateu na parede, inverte velocidadex
		velocidadex = -velocidadex;
	}
	contframe++;//contador do tempo para por na formula de baixo
	y = 185 + velocidadey*contframe + g*pow(contframe,2)/2; //Sorvetão
	
	if(y>185){//Caso onde bate no chão, para quicar de volta
      y=185;
      contframe=0;
    }
}



