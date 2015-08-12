class shell {
  
  float origx;
  float origy;
  
  float curx;
  float cury;
  
  float origr;
  float curr;
  
  color origc;
  color colr;
  

  shell(float x, float y, float r, color c) {
    origx = x + width/2;   
    origy = y + height/2;
    origr = r;   
    origc = c;
    
    restore();
  }



  void draw() {
    stroke(colr,30);
    strokeWeight(curr);
    noFill();
 
 //op1   
   arc(curx,cury, abs(width - 2*curx), abs(height - 2*cury), random(-3*PI/4,3*PI/4),random(-3*PI/4,3*PI/4));
   arc(curx,cury, abs(width - 2*curx), abs(height - 2*cury), random(3*PI/4,7*PI/4),random(3*PI/4,7*PI/4));

 //op2   
//    arc(curx,cury, abs(width - 2*curx), abs(height - 2*cury), random(-3*PI/4,3*PI/4),random(-3*PI/4,3*PI/4));
//    arc(curx,cury, abs(width - curx), abs(height - cury), random(3*PI/4,7*PI/4),random(3*PI/4,7*PI/4));   
   
 //op3   
//   arc(curx,cury, abs(width - 2*curx), abs(height - 2*cury), random(-PI,PI/2),random(-PI,PI/2));
//   arc(curx,cury, abs(width - curx), abs(height - cury), random(0,1.25*PI),random(0,1.25*PI)); 
   

  }




  void update(float x, float y, color c, float r) {
    curx += x;
    cury += y;
    colr = c; 
    if (curr > 1.1) curr = curr * r;
  }




  void restore() {  
    curx = origx;
    cury = origy;
    curr = origr;
    colr = origc;
  }
}

