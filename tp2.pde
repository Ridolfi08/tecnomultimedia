PImage pantalla, pantalla1;
int py, py1,py2,py3,py4,py5,py6,py7;
int px,px1;
PFont fuente, fuente2;
String frase, directores, reparto,reparto2,reparto3, musica, compositor;
void setup(){
  size(720,520);
  pantalla = loadImage("Pantalla.jpg");
  pantalla1 = loadImage("Pantalla2.png");
  px = 1000;
  px1 = -2500;
  py1 = 540;
  py2 = 600;
  py3 = 720;
  py4 = 840;
  py5 = 540;
  py6 = 610;
  py7 = 3200;
  fuente = loadFont("titulo.vlw");
  fuente2 = loadFont("fuente2.vlw");
  frase = "Castlevania";
  directores = "Directores";
  reparto = "Trevor Belmont   Richard Armitage\n                Alucard   James Callis\nSypha Belnades   Alejandra Reynoso";
  reparto2 = "Drácula   Graham McTavish\n  Hector   Theo James\n    Isaac   Adetokumboh M'Cormack";
  reparto3 = "Carmilla   Jaime Murray\n  Lenore   Jessica Brown Findlay\n    Striga   Ivana Miličević\nMorana   Yasmine Al Masri";
  compositor = "Compositor \nTrevor Moris:";
  musica = " Main Title \n wallachia 1455 \n Lisa of Lupu \n The True Science \n Vlad Searches for Lisa \n No More Do I Travel as a Man \n There Are No Innocents \n Hordes Descend on Targoviste \n Murdenu Tavern \n Tavern Brawl \n Bloody Gresit \n Bit of Dried Goat \n Alley Fight \n We Can't Turn Away \n Trevor Fights the Cyclops \n War for the Soul of Our People \n Twilight Descends \n I'm Trevor Belmont";
}
void draw(){
  background(255);
  //titulo Castlevania
  float alpha = map(py,-120,0,255,0);
  image (pantalla, 0,0,width,height);
  textFont(fuente);
  textSize(70);
  fill (255,0,0,alpha);
  text(frase, 190,260);
  py = py-5;
  fill(0);
  rect(px,0,width,height);
  px = px-10;
  
    if (px<=0){
    rect(0,0,width,height);
    textFont(fuente2);
    textSize(30);
    fill(255);
    text(directores, 260,py1);
    text(reparto, 120,py2);
    text(reparto2, 220,py3);
    text(reparto3, 210,py4);
    py1 = py1-3;
    py2 = py2-3;
    py3 = py3-3;
    py4 = py4-3;
    fill(255);
  rect(px1,0,width,height);
  px1 = px1+10;
    }
    if(px1>=0){
    rect(0,0,width,height);
    textFont(fuente2);
    textSize(30);
    fill(1);
    text(compositor,260,py5);
    textSize(25);
    text(musica,260,py6);
    py5 = py5-3;
    py6 = py6-3;
    image (pantalla1, 0,py7,width,height);
    py7 = py7-10;
    }
    if(py7<=0){
      image (pantalla1, 0,0,width,height);
    }
}
