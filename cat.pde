class cat{
  cat(float xx, float yy, float dd){
    x = xx;
    y = yy;
    d = dd;
  }
  float x, y, d;

  void object(){
    strokeWeight(0.05 * d);
    fill(#000000);
    rect(x-3*d, y-3*d, 6*d, 3*d);
    fill(#ffffff);
    circle(x, y, 6*d);
    fill(#FFCC99);
    arc(x+3*d, y-3*d, 6*d, 6*d, PI/2, PI);
    fill(#ffffff);
    line(x+2*d, y-d/2, x+4*d, y-d);
    line(x+2*d, y, x+4*d, y);
    line(x+2*d, y+d/2, x+4*d, y+d);
    line(x-2*d, y-d/2, x-4*d, y-d);
    line(x-2*d, y, x-4*d, y);
    line(x-2*d, y+d/2, x-4*d, y+d);
    arc(x-d/2,y,d,d, 0,PI);
    arc(x+d/2,y,d,d, 0,PI);
    strokeWeight(0.5 * d);
    point(x-d, y-d);
    point(x+d, y-d);
    point(x, y);
    strokeWeight(0.05 * d);
  }
  void move(){
    if(keyPressed){
      if(key == 'd' ) x += 4;
      else if(key == 'a' ) x -= 4;
      else if(key == 'w' ) y -= 4;
      else if(key == 's' ) y += 4;
    }
  }
  void out(){//영역 밖으로 나가기
    if (x/500 + y/800 < 1 || -(x-1000)/500 + y/800 < 1 || (x<300 && y>800) || (x>700 && y>800)){
      score = -1;
    }
  }
  void score(){
    if(0 <= score && score < 5){
      textSize(90);
      text("score:"+score, 500, 200);
    }
  
    else if (score == 5){
      textSize(90);
      text("Victory!", 500, 200);
      noLoop();
    }
  
    else if (score == -1){   //score == -1에서 게임 오버(장애물에 닿거나 영역에서 나간 경우)
      textSize(90);
      text("defeat", 500, 200);
      noLoop();
    }
  }
}
  
  
