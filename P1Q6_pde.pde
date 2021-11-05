float theta=0;
float alpha=PI/2;
void draw(){
  //daqui
  background(255);
  lights();
  fill(192);
  stroke(0);

  //navigation style 1
  translate(camX, camY, camZ);
  translate(width/2.0-camX, height/2.0-camY);
  rotateY(rotY);
  rotateX(rotX);
  translate(-(width/2.0-camX), -(height/2.0-camY));
  //ate aqui, é um axiliar para ajudar na vizualização 3D
  
  translate(300,300);
  scale(1,-1,1);
  translate(-100,-100);//fazendo as linhas ficarem na ponta do quadrado
    stroke(255,0,0);
    line(-1000,0,0,1000,0,0); //linha 'x'
    
    stroke(0,255,0);
    line(0,-1000,0,0,1000,0); //linha 'y'
    
    stroke(0,0,255);
    line(0,0,-1000,0,0,1000); //linha 'z'
    
    rotateX(PI/3);//rotacionando 60º na linha X 
  translate(100,100);//voltando para a normalidade
  
  
  fill(250,250,250);
  stroke(0,0,0);
  square(-100,-100,200);
  circle(0,0,200);
  
  Float x = (100)*cos(radians(theta)); //100 é o raio maior
  Float y = (100)*sin(radians(theta)); //este bloco faz com que o circulo pequeno rotacione na circunferencia do maior
  translate(x,y);
  
  rotateX(PI/2); //levando o circulo menor prar sua posicao perpendicular ao circulo maior
  //rotateY(PI/2);
  rotateY(alpha);//fazendo o circulo rodar sobre a circunferencia
  
  translate(0,25);//levando o centro das cordenadas para o centro do circulo menor
  rotateZ(-radians(theta*4));//fazendo o circulo rolar, sem delizar sobre a superficie
  translate(0,-25);//voltando a normalidade
  
  stroke(60,60,60);
  fill(0,250,0);
  translate(0,25);
  circle(0,0,50);
  fill(255,0,0);
  translate(0,25);
  sphere(3);
  
  theta+=(90/frameRate);
  alpha+=((PI/2)/frameRate);// nao entendo por q dps de algumas rotacoes ele des-sincroniza com o outro giro
  
}

float rotX, rotY, camX, camY, camZ;

void setup()
{
  size(600, 600, P3D); 
}



void mouseDragged()
{
  if (mouseButton == LEFT)
  {
    //navigation style 1
    rotY += (pmouseX - mouseX)*0.01;
    rotX += (pmouseY - mouseY)*0.01;
    //navigation style 2
//    rotX += (mouseX - pmouseX)*0.01;
//    rotY += (mouseY - pmouseY)*0.01;
  }
  if (mouseButton == RIGHT)
  {
    //navigation style 1
    camX -= (pmouseX - mouseX);
    camY -= (pmouseY - mouseY);
    //navigation style 2
//    camX -= (mouseX - pmouseX);
//    camY -= (mouseY - pmouseY);
  }
  if (mouseButton == CENTER)
  {
    //navigation style 1
    camZ += (pmouseY - mouseY);
    //navigation style 2
//    camZ += (mouseY - pmouseY);
  }
}
