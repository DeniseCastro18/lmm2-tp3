String estado;
PImage portada;
PImage  inter[]=new PImage [7];
PImage  resal[]=new PImage [2];
int Frameactual=0 ;
PImage f1,f2,f3,f4,inst,Fondo , barra,botonoff,botonoff1,botonoff2,botonoff3;
int tiempo1=0;
int tb1=0;
int tb2=0;
int contador,i;
boolean b1=true;
boolean b2=true;
int delay;

void setup(){
  size(1200,800);
  tb1=tb1+1;
     delay=delay+1;
  estado="juego";
  portada=loadImage("portad.jpg");
 f1=loadImage("Firmar0.png");
 f2=loadImage("F.png");
 f3=loadImage("Firmar02.png");
 f4=loadImage("Firmar3.png");
 Fondo=loadImage("FondoP.png");
 barra=loadImage("bARRAS.png");
 botonoff=loadImage("0.png");
  botonoff1=loadImage("0.png");
botonoff2=loadImage("0.png");
botonoff3=loadImage("0.png");
 inst=loadImage("instruc.jpg");
  for (int i = 0 ; i <6 ; i++){
    inter[i]=loadImage("d_"+i+".png");
  }
  for (int i = 0 ; i <2 ; i++){
 resal[i]=loadImage("resaltar_"+i+".png");
  }
}


void draw(){
   if(estado.equals("0")){
  image(portada,0,0,1200,700);
  Frameactual=frameCount % 6;
   
   if(Frameactual==0){
     image(inter[0],100,250);
   }
     if(Frameactual==1){
     image(inter[1],300,250);
   }
     if(Frameactual==2){
     image(inter[2],100,250);
   }
     if(Frameactual==3){
     image(inter[3],100,250);
   }
     if(Frameactual==4){
     image(inter[4],650,250);
   }
     if(Frameactual==5){
     image(inter[5],100,250);
   }
     if(Frameactual==6){
     image(inter[6],100,250);
   }
 
   }
  else if(estado.equals("1")){
     image(f1,0,0,1200,700);
      image(resal[frameCount %2],0,0,1200,700);
   }
   
  else if(estado.equals("2")){
     image(f2,0,0,1200,700);
   }
   
  else if(estado.equals("3")){
     image(f3,0,0,1200,700);
    
   }
     else if(estado.equals("4")){
     image(f4,0,0,1200,700);
     text(" Precione ENTER para continuar",700,650);
     textSize(30);
   }
    else if(estado.equals("juego")){
     image(Fondo,0,0,1200,700);
      image(barra,0,0,1200,700);
    //image(botonoff,180,605);
    //image(botonoff1,310,605);
    //image(botonoff2,750,605);
    //image(botonoff3,880,605);
   }
   
   
   
   
   
     else if(estado.equals("")){
     image(inst,0,0,1200,700);
   }
   
   
    if( estado.equals("juego")){
      if(tb1>=10){
       tb1=0;
     ;
   }
        if(b1==true&& delay>10){
   for (contador=1 ;contador <=10 ;contador ++){
        b1=false;
       ;
   } 
      }
    if(b1==false){
       image(botonoff,180,605);
    
      }
    }
    println("tb1",tb1);
    
   
   
 if( estado.equals("3")){
    tiempo1=tiempo1+1;
    println("tiempo1",tiempo1);
 if(estado.equals("3") && tiempo1>=10){
     estado="4";   }
 }
}    
void keyPressed(){
if(keyCode=='F' && estado.equals("2")){
  estado = "3";
}
 if(keyCode==ENTER && estado.equals("4")){
     estado="juego";

}
 }
 
void mouseClicked(){
  if(estado.equals("0")){
  if(mouseY>450&& mouseY<450+100&& mouseX>300 && mouseX<300+250){
    estado = "1";
  }
  }
   if(estado.equals("1")){    
  if(mouseY>310&& mouseY<310+1510&& mouseX>700 && mouseX<700+100){
    estado = "2";
  }
  
  }
  //  if(estado.equals("2")){    
  //if(mouseY>310&& mouseY<310+1510&& mouseX>700 && mouseX<700+100){
  //  estado = "";
  //}
  
  
   if(estado.equals("0")){
  if(mouseY>400&& mouseY<400+100&& mouseX>650 && mouseX<650+250){
    estado = "5";
  }
  }
}
