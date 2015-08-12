class re {
  int count;
  float x, y, tx, ty;
  int step;
  float inc;
  int len;

  float [] xs, ys;

  boolean button = true;

  re(float x_, float y_, float tx_, float ty_, float inc_, float len_) {
    x=x_;
    y= y_;
    tx= tx_;
    ty= ty_;
    inc = inc_;
    len = int(len_);
    xs=new float [len];
    ys=new float [len];
  }


  void display() {

    if (step==0) {

      tx = random(width);
      ty = random(height);

      step=1;
    } 
    else if (step==1) {

      x+=(tx-x)*inc;
      y+=(ty-y)*inc;


      setmyPos();

      if ((abs(tx-x)< 1) && (abs(ty-y)< 1)) {
        count++;
        if (count>40) {
          step = 0;
          count = 0;
        }
      }
    }


    for (int i=0; i < xs.length; i++) {
      noStroke();

      if (button) {
        fill(255, 125, 89, 125*i/xs.length);
        ellipse(xs[i], ys[i], i*2, i*2);
        fill(68, 214, 168, 125*i/xs.length);
        ellipse(ys[i], xs[i], i*2.5, i*2.5);
      }

      else if (!button) {
        fill(0);
      }

      //      else {
      //        fill(207, 50, 143, 125*i/xs.length);
      //        ellipse(xs[i], ys[i], i*2, i*2);
      //        fill(212, 204, 75, 125*i/xs.length);
      //        ellipse(ys[i], xs[i], i*2.5, i*2.5);
      //      }
    }

    rectMode(CENTER);
    stroke(255, 100);
    noFill();
    rect(y, x, 10, 10);
    rect(x, y, 10, 10);

    if (mouseX > x-5 && mouseX < x+5 && mouseY > y-5 && mouseY < y+5 && mousePressed) 
      button = !button;
  }

  void setmyPos() {
    for (int i=0; i < xs.length - 1; i++) {
      xs[i] = xs[i+1];
      ys[i] = ys[i+1];
    } 

    xs[xs.length-1] = x;
    ys[ys.length-1] = y;
  }
}

