//Comision 5
//Candela Hermida 119054/7
PFont letra;
PImage fondo1, fondo2, fondo3, fondo4, varita;
int pantalla, tiempo, suma, diametro, postitulo, postitulo2, postexto3, postexto4, postexto5;
boolean ultimaPantalla;

void setup() {
  size(640, 480);
  fondo1 = loadImage("foto.jpeg");
  fondo2 = loadImage("foto1.jpeg");
  fondo3 = loadImage("foto2.jpeg");
  fondo4 = loadImage("foto3.jpeg");
  varita = loadImage("varita.png");
  letra = createFont("harry.ttf", 48);
  textFont(letra);
  textSize(40);
  tiempo = frameCount / 2;
  pantalla = 0;
  suma = 1;
  diametro = 50;
  ultimaPantalla = false;
  postitulo= -110;
  postitulo2= 500;
  postexto3= -200;
  postexto4= -20;
  postexto5= 510;
}

void draw() {
  if (pantalla == 0) {
    imageMode(CORNER);
    image(fondo1, 0, 0, width, height);
    imageMode(CENTER);
  image (varita, mouseX, mouseY, 60,60);
    push();
    fill(255);
    textSize(80);
    text("Harry Potter\ny el prisionero de azkaban", 20, postitulo);
    pop();
    if (postitulo < 80){
    postitulo += suma;
    } else {
      postitulo =80;}
    
  } else if (pantalla == 1) {
    imageMode(CORNER);
    image(fondo3, 0, 0, width, height);
    
    imageMode(CENTER);
  image (varita, mouseX, mouseY, 60,60);
    
    fill(255);
    textSize (40);
    text("Este es el tercer libro\nde la saga de Harry Potter.", postitulo2, 100);
    
    text ("Fue publicado por primera vez \nen el Reino Unido el 8 de julio de 1999.", postexto3, 300);
    
    if (postexto3 < 20){
    postexto3 += suma;
    } else {
      postexto3 =20;}
    
     if (postitulo2 > 300){
    postitulo2 -= suma;
    } else {
      postitulo2 =300;}
      
  } else if (pantalla == 2) {
    imageMode(CORNER);
    image(fondo2, 0, 0, width, height);
    
    imageMode(CENTER);
  image (varita, mouseX, mouseY, 60,60);
    fill(255);
    textSize (38);
    text("Este libro tuvo una adaptacion cinematografica en 2004.", 10 , postexto4);
    text("En el 2024 se festeja su 20 aniversario.",10, postexto5);
    
    if (postexto4 < 50){
    postexto4 += suma;
    } else {
      postexto4 =50;}
      
    if (postexto5 > 440){
    postexto5 -= suma;
    } else {
      postexto5 =440;}
      
    
    
  } else if (pantalla == 3) {
    imageMode(CORNER);
    image(fondo4, 0, 0, width, height);
    
    imageMode(CENTER);
  image (varita, mouseX, mouseY, 60,60);
    fill(255);
    textSize(30);
    textAlign (CENTER);
  
    if (mouseX > 200 && mouseX < 450 && mouseY > 340 && mouseY < 450) {
      text ("Sirius Black es el padrino de Harry Potter", width/2,400);
    } else {
    text("Spoiler", width/2, 400);
    }
    if (mouseX > 250 && mouseX < 390 && mouseY > 200 && mouseY < 250) {
      fill (255,0,0);
    } else { fill (255);}
    textSize(30);
    rect(250, 200, 140, 50); 
    fill(0);
    text("Reiniciar", width/2, 235);
     textAlign(CORNER);
    
    
  }

  if (!ultimaPantalla) {
    tiempo += suma;
    if (tiempo >= 250 && pantalla != 3) {
      tiempo = 0;
      postitulo= -110;
  postitulo2= 500;
  postexto3= -200;
  postexto4= -20;
  postexto5= 510;
     
      if (pantalla < 2) {
        pantalla++;
      } else if (pantalla == 2) {
        ultimaPantalla = true;
        pantalla++;
      }
    }
  }
}

void mouseClicked() {
  if (pantalla == 3) {
    
    if (mouseX > 250 && mouseX < 390 && mouseY > 200 && mouseY < 250) {
      pantalla = 0; 
      tiempo = 0;
      ultimaPantalla = false;
    }
  }
}
