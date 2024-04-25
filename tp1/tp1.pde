//tp1
//Candela Hermida
//comision 5

PImage Kiwi;
void setup(){
  size(800, 400);
  background(255);
  Kiwi = loadImage("Kiwi.jpg");
  Kiwi.resize (400, 400);
  image (Kiwi, 0, 0);
  println(mouseX, mouseY);
}
void draw(){
  //kiwi de atras
  fill (188, 134, 20);
  noStroke();
  ellipse(660, 190, 270, 200);
  
  fill (106, 77, 16);
  ellipse (551, 225, 190, 170);
  //sombra
  fill(225, 187, 106);
  ellipse(711, 167, 40, 60);
  // reflejo
  
  
  //kiwi cortado
  fill (211, 147, 6);
  noStroke();
  circle (520, 240, 210);
  //cascara
  fill (95, 215, 95);
  stroke (70,180,70);
  strokeWeight (5);
  circle (510, 240, 200);
  //primer color
  fill (140, 240, 140);
  stroke (110,240,110);
  strokeWeight (5);
  circle (510, 240, 150);
  //segundo color
  fill (222, 250, 192);
  noStroke ();
  circle (510, 240, 70);
  // centro
  fill (72, 53, 12);
  circle (551, 212, 10);
  circle (552, 240, 10);
  circle (555, 269, 10);
  circle (456, 236, 10);
  circle (480, 208, 10);
  circle (509, 191, 10);
  circle (527, 196, 10);
  circle (483, 184, 10);
  circle (479, 273, 10);
  circle (518, 290, 10);
  circle (492, 295, 10);
  circle (537, 283, 10);
  circle (464, 253, 10);
  circle (530, 300, 10);
  circle (459, 212, 10);
  circle (570, 236, 10);
  circle (464, 282, 10);
  //semillas
 
}
void mouseClicked() {
  print ("X: "); println (mouseY);
  print ("Y: "); println (mouseX);
}
