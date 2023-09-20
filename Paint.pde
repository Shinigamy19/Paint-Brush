//Benitez Dos Santos Eros Douglas

//Definicion de variables globales para color
color amarillo= color(255,255,0);
color naranja= color(255,164,032);
color rosa= color(255,0,255);
color cian= color(0,255,255); 
color rojo= color(255,0,0);
color verde= color(0,255,0);
color azul= color(0,0,255);
color violeta= color(122,0,255);
color negro= color(0, 0, 0);
color blanco= color(255, 255, 255);
color colorLapiz = negro;

//Defino el grosor en variable global
int grosor = 1;
int grosorAnterior = 1;

//Variable global para la goma
//Defini una variable booleana por que con un int no me funciono
boolean borrar = false;

//Defino variable global para el pincel/lapiz
char pincelActual = 'L';
char pincelAnterior = 'L';


void setup()
{
  //Lo hice mas grande para que entre todo
  size(800,800);
  smooth();
  background(255);
}

void draw() 
{
  println (mouseX +"," + mouseY);
  //Menu de funciones
  strokeWeight(0);
  fill(200);
  rect(0,0,130,800);
  //No pude lograr que el contorno no se tiña del color actual
  
  //Menu de Funciones
  fill(rojo);
  text("Funciones",40, 35);
  fill(negro);
  text("Presiona L para \n Pintar Lineas",20,55);
  text("Presiona C para \n Pintar Cuadrados",20,95);
  text("Presiona T para \n Pintar Triangulos",20,135); 
  text("Presiona S para \n Pintar con Circulos",20,175); 
  text("Presiona G para \n Usar la Goma",20,215); 
  text("Presiona + o - para \n Cambiar tamaño",20,255);  
  
  fill(rojo);
  
  ///Pincel actual
  text("Utilizando",40,315);
  fill(negro);
  if(pincelActual == 'L')
  {
      text("Utilizando:\nLineas",20,355); 
  }  
  else if (pincelActual == 'C') 
  { 
      text("Utilizando:\nCuadrados",20,355); 
  }
  else if (pincelActual == 'T') 
  {
      text("Utilizando:\nTriangulos",20,355); 
  }
  else if(pincelActual == 'S') 
  {
      text("Utilizando:\nCirculos",20,355); 
        
  }
 fill(rojo);
  text("Tamaño:\n      "+ grosor,40,425); 
 
 //Si se activa la goma aparece una advertencia
  if(borrar)
  {
    fill(azul);
      text("Utilizando Goma\n    Presiona G \n     Para Salir",20,495); 
  }
    
  fill(rojo);
  //Muestra un cuadrado con el color actual
  text("Color Actual:",30,575); 
  //Si no es la goma
  if(!borrar){
  fill(colorLapiz);//Muestra el color actual
  } 
  else
  {
    fill(blanco);//Si es la goma muestra color blanco
  }
  rect(50,590,30,30);
  //Menu de Colores
  fill(rojo);
  text("Colores",45, 655);
  //rojo
  fill(rojo);
  rect(10,670,30,30);
  //verde
  fill(verde);
  rect(50,670,30,30);
  //azul
  fill(azul);
  rect(90,670,30,30);
  //amarillo
  fill(amarillo);
  rect(10,710,30,30);
  //naranja
  fill(naranja);
  rect(50,710,30,30);
  //violeta
  fill(violeta);
  rect(90,710,30,30);
  //Cian
  fill(cian);
  rect(10,750,30,30);
  //Rosa
  fill(rosa);
  rect(50,750,30,30);
  //Negro
  fill(negro);
  rect(90,750,30,30);
  
  strokeWeight(grosor);
  
 
  // Si el mouse se preciona en determinada area se genera los siguientes eventos.
  //Tira de colores 1
  if(mousePressed == true) 
  {
    if(mouseY > 670 && mouseY < 700)
    { 
      if(mouseX > 10 && mouseX < 40)
      {
        stroke(rojo); 
        colorLapiz = rojo; 
        //cree ese valor para luego sustituirlo
      }
      else if(mouseX> 50 && mouseX< 80)
      {
        stroke(verde);
        colorLapiz = verde; 
      }      
      else if(mouseX> 90 && mouseX< 120)
      {
        stroke(azul);
        colorLapiz = azul;
      }
      
    }
  //Tira de colores 2
  if(mouseY > 710 && mouseY < 740)
  { 
    if(mouseX > 10 && mouseX < 40)
    {
        stroke(amarillo); 
        colorLapiz = amarillo; 
    }
    else if(mouseX> 50 && mouseX< 80)
    {
        stroke(naranja);
        colorLapiz = naranja; 
    }      
    else if(mouseX> 90 && mouseX< 120){
        stroke(violeta);
        colorLapiz = violeta;
    }    
  }
    
 //Tira de colores 3  
  if(mouseY > 750 && mouseY < 780){ 
     if(mouseX > 10 && mouseX < 40)
     {
        stroke(cian); 
        colorLapiz = cian; 
     }
     else if(mouseX> 50 && mouseX< 80)
     {
        stroke(rosa);
        colorLapiz = rosa; 
     }      
     else if(mouseX> 90 && mouseX< 120)
     {
        stroke(negro);
        colorLapiz = negro;
     }  
   }
    
//con esto cree una condicional para que los lapicez/pinceles se mantengan en el mismo color
//Linea
  if(pincelActual == 'L')
  {
      fill(colorLapiz);
      line(mouseX, mouseY, pmouseX, pmouseY);
  }
//Cuadrado
  else if (pincelActual == 'C') 
  { 
      fill(colorLapiz);
      rect(mouseX, mouseY, grosor, grosor);
  }
//Triangulo
  else if (pincelActual == 'T') 
  {
      fill(colorLapiz);
      triangle(mouseX, mouseY, mouseX + 2, mouseY + 2, mouseX + 4, mouseY + 0);
  }
//Circulo
  else if(pincelActual == 'S') 
  {
      fill(colorLapiz);
      for(int i = 1; i < 10; i += 2) 
    {
      point(mouseX^i, mouseY^i);
    }
        
  }
    
  //Verifica variable booleana
 if(borrar)
 {
     stroke(blanco);
     fill(blanco);
 }
    
  
  
 }
} 

//Teclas para cambiar entre funciones
void keyPressed()
{
  //Aumenta el tamaño del cursor
  if(key == '+')
  {
      grosor = min(grosor + 1, 100);//Limito a maximo 100
  }
  //Disminuye el tamaño del cursor
  if(key == '-')
  {
      grosor = max(1, grosor - 1);
  }

  //Define linea
  if(key == 'l' || key == 'L')
   {
      pincelActual = 'L';
   } //Define Cuadrado
   else if(key == 'c' || key == 'C')
   {
      pincelActual = 'C';
   } //Define Circulos
   else if(key == 's' || key == 'S')
   {
      pincelActual = 'S';
   } //Define Triangulo
   else if(key == 't' || key == 'T'){
      pincelActual = 'T';
   }
   //Define Goma
   //Guarda y Carga las posiciones anteriores
  if (key == 'g' || key == 'G')
  {
    if (borrar)
    {
        grosor = grosorAnterior;
        stroke(colorLapiz);
        borrar = false;
        pincelActual = pincelAnterior; 
    } else
    { 
        grosorAnterior = grosor;  
        stroke(blanco);
        grosor = 40;
        borrar = true;
        pincelAnterior = pincelActual;
        pincelActual = 'L';
    }
  }
}
