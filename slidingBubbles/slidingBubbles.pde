re [] rs;


void setup() {
  size(600, 600); 
  rs= new re[15];

  for (int i = 0; i < rs.length; i++) {
    rs[i] = new re(random(width), random(height), random(width), random(height), random(0.05, 0.1), random(5, 40));
  }
}

void draw() {
  background(0);
  for (int i=0; i < rs.length; i++) {
    rs[i].display();
  }
}

