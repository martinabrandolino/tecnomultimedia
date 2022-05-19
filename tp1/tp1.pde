int T, F, tel, C;
PImage nube, bart, lisa, homero, marge, magui, tele, familia, amor;
PFont fuente1, fuente2;
void setup() {
  size(700, 700);
  nube=loadImage ("nubes.png");
  bart=loadImage("bart.png");
  lisa=loadImage("Lisa.png");
  homero=loadImage("Homero.png");
  marge=loadImage("Marge.png");
  magui=loadImage("magui.png");
  tele=loadImage("tele.jpg");
  familia=loadImage("Simpson.png");
  amor=loadImage("cariñito.png");
  fuente1=createFont("Baille Simpson DEMO.otf", 40);
  fuente2=createFont("Simpsonfont DEMO.otf", 40);
}

void draw() {
  println(frameCount);
  F=frameCount;
  C--;
  T++;
  tel=tel+10;
  if (F>0 && F <200) {
    imageMode(CENTER);
    image(tele, width/2, height/2, width+tel, height+tel );
  } else if (F>200 && F<300) {
    image(nube, width/2, height/2, width, height);
    textFont(fuente2, T-200);
    textAlign(CENTER);
    fill(223, 229, 44);
    text("Los Simpsons", width/2, height/2);
  } else if (F>300 && F<350) {
    image(nube, width/2, height/2, width, height);
    image(homero, width/2, height/2, width, height);
    textSize(40);
    text("HOMERO", 150, 100);
  } else if (F>350 && F<400) {//derecha
    image(nube, width/2, height/2, width, height);
    image(marge, width/2, height/2, width, height);
    textSize(40);
    text("MARGE", 600, 400);
  } else if (F>400 && F<450) {//izquierda
    image(nube, width/2, height/2, width, height);
    image(lisa, width/2, height/2, width, height);
    textSize(40);
    text("LISA", 150, 400);
  } else if (F>450 && F<500) {//abajo derecha
    image(nube, width/2, height/2, width, height);
    image(bart, width/2, height/2, width, height);
    textSize(40);
    text("BART", 550, 600);
  } else if (F>500 && F<550) {//arriba izquierda
    image(nube, width/2, height/2, width, height);
    image(magui, width/2, height/2, width, height);
    textSize(40);
    text("MAGUI", 150, 100);
  } else if (F>550 && F<2350) {
    background(0);
    textFont(fuente1, 40);
    textSize(50);
    textAlign(CENTER);
    fill(223, 229, 44);
    text("CENTURY FOX PRESENTATION", width/2, 800+C);
    textSize(40);
    text("Creado por\n\nMatt Groening\n\n\n\nVoice Actors\n\nDan Castellaneta\nJulie Kavner\nNancy Cartwright\nYeardley Smith\nHank Azaria\nHarry Shearer\n\n\n\nProductor(es) ejecutivo(s)\n\nAl Jean\nIan Maxtone-Graham\nJohn Frink\nJames L. Brooks\nMatt Groening\nMatt Selman\nSam Simon\n\n\n\nGuionistas\n\nMike Mendel\nColin ABV Lewis\nJeff Goldstein\nAl Jean\nConan O'Brien\nBill Oakley\nJosh Weinstein\nMike Reiss\nKen Tsumara\nGeorge Meyer\nJohn Swartzwelder\nJon Vitti\nCJ Gibson y David M. Stern.\nDee Capelli\nLona Williams\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nPreciona C para dar cariño", width/2, 900+C);
  }
}
void keyPressed() {
  if (key == 'C' || key == 'c');
  {
    image(amor, width/2, height/2, width, height);
    text("click\npara Reiniciar", 550, 100);
  }
}
void mousePressed() {
  if (mousePressed) {
    frameCount=0;
    C=0;
    T=0;
    tel=0;
  }
}
