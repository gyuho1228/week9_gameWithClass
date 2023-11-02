class enemy{
  enemy(float xx, float yy, float dd, float vxx, float vyy){
    x = xx;
    y = yy;
    d = dd;
    vx = vxx;
    vy = vyy;
  }
  enemy(){
    x = random(width);
    y = random(height);
    d = random(5, 15);
    vx = random(4, 6);
    vy = random(4, 6);
  }
  
  float x, y, d;
  float vx, vy;
  
  void object(){
    fill(100,0,200);
    circle(x,y,10*d);
    fill(200,200,10);
    circle(x-2*d,y-2*d,2*d);
    circle(x+2*d,y-2*d,2*d);
    fill(100,200,10);
    circle(x,y,d);
    circle(x-2*d,y-2*d,d/2);
    circle(x+2*d,y-2*d,d/2);
    arc(x,y+2*d,4*d,4*d,0,PI);
    line(x-2*d,y+2*d,x+2*d,y+2*d);
    line(x-5*d,y-6*d,x-5*d,y);
    line(x-5*d,y-6*d,x,y-5*d);
    line(x,y-5*d,x+5*d,y-6*d);
    line(x+5*d,y-6*d,x+5*d,y);
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
    if (dis < (3*(10+2*score) + 5*d)){ 
      score = -1;
    }
  }
}
  
