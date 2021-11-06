float x = 0;
int mov = 1;
float inclinacao = 0;
float rotX, rotY, camX, camY, camZ;
timer = 0;
// coordenadas da esfera
float y = 100;

// coordenadas dos pontos
float Ax = 400, Ay = 100, Az = 0;
float Bx = -100, By = 50/3, Bz = 500;
float Dx = 100, Dy = -50/3, Dz = 500;

// velocidade linear
float v = 0;
//velocidade angular
float alpha = 0;


void setSpeed(int num){
  if(num == 1 || num == 3){
    alpha = PI/360;
    v = 0.46296;
  }else if(num == 2){
    alpha = PI/120;
    v = 0.2777;
  }
}

void InitialSetup(){
  translate(camX, camY, camZ);
  translate(width/2.0-camX, height/2.0-camY);
  rotateY(rotY);
  rotateX(rotX);
  translate(-(width/2.0-camX), -(height/2.0-camY));
  translate(500, 600, 0);
  rotateX(0);
  rotateY(-PI/2);
  scale(-1,-1,-1);
  rotateZ(0.21);
  background(100,100,300)
  strokeWeight(10);
  stroke(0, 0, 0); 
  line(-500, 0, 0, 500, 0, 0);
  stroke(0, 255, 255);
  line(0, -500, 0, 0, 500, 0);
  stroke(255, 255, 255);
  line(0, 0, -500, 0, 0, 500);

}

void setup(){
  size(1100,1000, P3D);
  frameRate(60);
}

void esfera(float x, float y, float z){
  stroke(0);
  strokeWeight(40);
  point(x,y,z);
}
void mov1(){
  translate(400, y, 500);
  rotateY(inclinacao);
  translate(-400, -y, -500);
  esfera(Ax, y, Az);
  
  if(inclinacao <  PI/2){
    inclinacao += alpha;
    y -= v;
  }else{
   mov = 2;
   inclinacao = alpha;
  }
}

void mov2(){
  translate(0, y, 500);
  rotateY(inclinacao);
  translate(0, -y,-500);
  esfera(Bx, y, Bz);
  
  if(inclinacao <  PI){
    inclinacao += alpha;
    y -= v;
  }else{
   mov = 3;
   inclinacao = alpha;
  }
}

void mov3(){
  translate(-400, -y, 500);
  rotateY(inclinacao);
  translate(400, y,-500);
  esfera(Dx, y, Dz);
    
  if(inclinacao <  PI/2){
    inclinacao += alpha;
    y -= v;
  }else{
   mov = 0;
  }
}
void draw(){
   InitialSetup();
   setSpeed(mov);
	timer++;
		if(timer >= 360 ){
	 
   if(mov == 1){
      mov1();
   }
   else if(mov == 2){
     mov2();
   }else if(mov == 3){
     mov3();
   }
	}
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