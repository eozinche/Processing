//Eozin Che | week4_draw_shell
//Press mousebutton
//Move or Stay around center point 


shell[] myshl;

boolean stop = true;
boolean newdraw = false;

float startR = 20;
float shrink = 0.99;

void setup() {
  size(600, 500);
  background(0);
  smooth();
  colorMode(HSB, 100, 100, 100);
  initbg();
}

void draw() {
  if (!stop) {
    int crvs = myshl.length;
    for (int i = 0; i < crvs; i++) {
      myshl[i].update((mouseX - pmouseX), (mouseY - pmouseY), myshl[(i+1) % crvs].colr, shrink);
      myshl[i].draw();
    }
  }
}



void initbg() {
  background(0);
  myshl = new shell[720];
  float ri = 0.0;
  float spiral = 0.1;
  for (int i = 0; i < myshl.length; i++) {
    ri += 2*PI/360;
    spiral += 0.12;
    myshl[i] = new shell(spiral*sin(ri), spiral*cos(ri), startR, color(50, 0, 100*ri/(PI*2*2)));
  }
}


void initAgain() {
  background(0);
  for (int i = 0; i < myshl.length; i++) {
    myshl[i].restore();
  }
}


void mousePressed() {  
  stop = false;
}


void keyPressed() {
  if (key == ' ')    initAgain();
}

