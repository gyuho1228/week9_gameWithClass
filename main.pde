enemy [] en;
apple [] ap;
cat cuteCat;

int score;
float x, y;
void setup(){
  
  size(1000, 1000);
  x = 500; y = 800;
  score = 0;
  
  cuteCat = new cat(x, y, 10.0+2*score);
  
  en = new enemy[5];
  ap = new apple[5];
  for (int i=0;i<4;i++){
    en[i] = new enemy();
    ap[i] = new apple();
  }
  en[4] = new enemy(0.0,0.0,30.0,1.0,1.0); //다른 constructor이용해 따로 object 생성
  ap[4] = new apple(0,500,30,1,0);
}


void draw(){
  
  background(0, 255, 255);
  
  fill(0,255,0);
  triangle(500,0,0,800,1000,800);
  fill(139,69,19);
  quad(300,800,700,800,700,1000,300,1000);  //배경 그리기
  
  
  
  cuteCat.object();
  cuteCat.move();
  cuteCat.out();
  cuteCat.score();
  
  for (int i = 0; i<5; i++){
    en[i].move();
    en[i].object();
    en[i].collide(cuteCat);
    ap[i].move();
    ap[i].object();
    ap[i].collide(cuteCat);
  }
  
  

}


void keyPressed(){  //r을 눌러 재시작
  if (key == 'r' || key == 'R') {
    setup();
    loop();
  }
}
