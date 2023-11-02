class apple{
  apple(float xx, float yy, float dd, float vxx, float vyy){
    x = xx;
    y = yy;
    d = dd;
    vx = vxx;
    vy = vyy;
  }
  apple(){
    x = random(width);
    y = random(height);
    d = random(5, 15);
    vx = random(4, 6);
    vy = random(4, 6);
  }
  
  float x, y, d;
  float vx, vy;
  
  void object(){
    fill(255,0,0);
    circle(x,y,3*d);
    line(x,y-2*d,x,y-1*d);
  }  
  void move(){
    x += vx; y += vy;
    if(x>width || x<0) vx = -vx;
    if(y>height || y < 0) vy = -vy;
  }
  void collide(cat aa){
    float dx, dy, dis;
    dx = x - aa.x;
    dy = y - aa.y;
    dis = sqrt(dx*dx + dy*dy);
    if (dis < (3*(10+2*score) + 2*d)){//사과를 먹으면 점수 +1
      score += 1;
      x= 1100; y = 1100;
    }
  }
}
  
