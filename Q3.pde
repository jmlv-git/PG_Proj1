float x, y, i, alpha;
  
void setup() {
  size(800,600);
  background(128,128,300);
  //taxa de quadro
  frameRate(60);
  x = 100;
  y = 0;
  i = 0;
}

void setgrafico() {
  //tamanho do plano cartesiano
  translate(400, 300);
  //escala do 1º quadrante para o 2º quadrante no sentido antihorario
  scale(1, -1);
  //espessura das linhas x e y do PC
  strokeWeight(1);
  //golpe de linha
  stroke(0);
  //linha X
  line(-400, 0, 400, 0);
  //linha Y
  line(0, 300, 0, -300);
  //continuidade da linha
  alpha = PI / 240;
}


void draw() {
  setgrafico();
  //rotacão
  rotate(i);
  //espessura do arco
  strokeWeight(2);
  //seta a cor do arco
  stroke(100, 75, 37);
  //seta os pontos
  point(x, y);
  //condicão do arco
  if (x <= 200) { //<>//
    i += alpha;
    x += 100*alpha/PI;
  }
}

  
