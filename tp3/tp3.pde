int posX, posY;
color white = (255);
color black = (0);
boolean startWhite;
PImage img;

void setup() {
  size(800, 400);
  img = loadImage("op art.jpg");
  background(255);
  strokeWeight(10);
}

void draw() {
  image(img, 0, 0, width / 2, height); 
  posY = 5;
  posX = 405;  

  for (int j = 1; j <= 4; j++) {
    if (j % 2 != 0) {
      firstRow();
      posX  = 400;  
    } else {
      secondRow();
      posX  = 400;  
    }  
    posY += 100; 
  }
}

void firstRow() {
  int tHeight = 85; 
  int tWidth = 0;

  for (int i = 0; i < 2; i++) {
    topLeftTriangles(tHeight, tWidth);

    posY += 4;
    posX += 4;
    changeColor();    
    bottomRightTriangles(tHeight, tWidth);

    posX += 100;
    posY -= 4;
    topRightTriangles(tHeight, tWidth);

    posX -= 4;
    posY += 4;
    changeColor();    
    bottomLeftTriangles(tHeight, tWidth);

    posX += 100;
    posY -= 4;
  }
}

void secondRow() {
  int tHeight = 85; 
  int tWidth = 0;

  for (int i = 0; i < 2; i++) {
    topRightTriangles(tHeight, tWidth);

    posX -= 4;
    posY += 4;
    changeColor();    
    bottomLeftTriangles(tHeight, tWidth);

    posX += 100;
    posY -= 4;
    topLeftTriangles(tHeight, tWidth);

    posY += 4;
    posX += 4;
    changeColor();    
    bottomRightTriangles(tHeight, tWidth);

    posX += 100;
    posY -= 4;
  }
}

void topLeftTriangles(int tHeight, int tWidth) {
  for (int i = 1; i < 9; i++) {
    setColor();
    triangle(posX + tHeight, posY + tWidth, posX + tWidth, posY + tWidth, posX + tWidth, posY + tHeight);
    tHeight -= 5;
    tWidth += 5;
    changeColor();
  }
}

void topRightTriangles(int tHeight, int tWidth) {
  for (int i = 1; i < 9; i++) {
    setColor();
    triangle(posX + tWidth, posY + tWidth, posX + tHeight, posY + tWidth, posX + tHeight, posY + tHeight);
    tHeight -= 5;
    tWidth += 5;
    changeColor();    
  }
}

void bottomLeftTriangles(int tHeight, int tWidth) {
  for (int i = 1; i < 9; i++) {
    setColor();
    triangle(posX + tWidth, posY + tWidth, posX + tWidth, posY + tHeight, posX + tHeight, posY + tHeight);
    tHeight -= 5;
    tWidth += 5;
    changeColor();    
  }
}

void bottomRightTriangles(int tHeight, int tWidth) {
  for (int i = 1; i < 9; i++) {
    setColor();
    triangle(posX + tHeight, posY + tWidth, posX + tHeight, posY + tHeight, posX + tWidth, posY + tHeight);
    tHeight -= 5;
    tWidth += 5;
    changeColor();    
  }
}

void setColor() {
  if (startWhite) {
    stroke(white);
    fill(white);
  } else {
    stroke(black);
    fill(black);
  }
}

void mouseClicked() {
  strokeWeight(random(5, 30));
}

void changeColor() {
  startWhite = !startWhite;
}
