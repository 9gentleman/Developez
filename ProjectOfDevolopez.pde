//anaekran
int bullX=600,bullY=600,bullXHızı=2,bullYHızı=2,axeX=300,axeY=300,axeXHızı=1,axeYHızı=1;

PImage enemy,right_arrow,left_arrow,dright_arrow,lright_arrow,double_arrow,triple_arrow,mainChar,flash;
PImage double_arrow1,double_arrow2,double_arrow3,triple_arrow1,triple_arrow2,triple_arrow3;
PImage arkaplan1,shootingstar,enemy2,enemy2_1,stars;
int c ,can=15,timer=1,x1=0,y1=0,x2=0,y2=0,x3=0,y3=0,x4=0,y4=0,x5=0,y5=0,x6=0,y6=0;
int karakterX=50,karakterY=100,dusmanX=600,dusmanY=600,xHızı=1,yHızı=1,screen=0;
int x7=0,y7=0,x8=0,y8=0,x9=0,y9=0,x10=0,y10=0,x11=0,y11=0,x12=0,y12=0;
boolean mainScreen=true,screen1=false,screen2=false,screen3=false,karakterU=false,karakterD=false,karakterR=false,karakterL=false;
boolean dur=true,kontrol1=false,kontrol2=false;
boolean run_once=false,run_once2=false;
//2
PImage background1;
PImage background2;
PImage background3;
float xi =20;
boolean bayrak1 = false,bayrak2=false,bayrak3=false,dur1=true;
boolean run_once3=false,run_once4=false,run_once5=false;
int sayac=1,p,enemyX=600,enemyY=600,enemy2X=600,enemy2Y=600,enemyX_speed=3,enemyY_speed=3,enemyX_speed2=5,enemyY_speed2=5,timer2=1;
//3
PImage axe,bull,heart ;
int timer3=0,döndürme,axe_x=0,axe_y=0,axe_boy=64,axe_en=64;
float flash_x=0,flash_y=0,heart_x=0,heart_y=0,rnd=0;
boolean kontrol_a = false,kontrol_b=false,kontrol_c=false,kontrol_d=false,kontrol_e=false,dur2=true;
boolean run_once6=false,run_once7=false,run_once8=false,run_once9=false,run_once10=false;
//shw
boolean ctrl=true;
void setup(){
  size(1200,800);
  enemy=loadImage("enemy1.png");
  right_arrow=loadImage("right_arrow.png");
  left_arrow=loadImage("left_arrow.png");
  dright_arrow=loadImage("down_right_arrow.png");
  lright_arrow=loadImage("down_left_arrow.png");
  double_arrow=loadImage("double_arrow.png");
  double_arrow1=loadImage("double_arrow.png");
  double_arrow2=loadImage("double_arrow.png");
  double_arrow3=loadImage("double_arrow.png");
  triple_arrow=loadImage("triple_arrow.png");
  triple_arrow1=loadImage("triple_arrow.png");
  triple_arrow2=loadImage("triple_arrow.png");
  triple_arrow3=loadImage("triple_arrow.png");
  background1=loadImage("background1.png");
  background1.resize(1200,800);
  background2=loadImage("background2.png");
  background2.resize(1200,800);
  background3=loadImage("background3.png");
  background3.resize(1200,800);
  mainChar=loadImage("character.png");
  flash= loadImage("flash.png");
  shootingstar=loadImage("shootingstar.png");
  enemy2=loadImage("enemy2.png");
  enemy2_1=loadImage("enemy2_1.png");
  stars=loadImage("stars.png");
  axe=loadImage("axe.png");
  bull=loadImage("bull.png");
  heart=loadImage("heart.png");
}
void draw(){
//mainCode
  screen=constrain(screen,0,4);
  c=get(mouseX,mouseY);
   if(can<=0){
       exit();
     }
//mainCode
//ana ekran
  if(screen==0){
    background(#41C5DE);
    imageMode(CENTER);
    image(bull, bullX, bullY);
    bullX = bullX + bullXHızı;
    bullY = bullY + bullYHızı;
    if(bullX>1170   || bullX<50){bullXHızı = bullXHızı * -1;}
    if(bullY>760    || bullY<50){bullYHızı = bullYHızı * -1;}
    image(enemy2,enemyX,enemyY);
    enemyX = enemyX + enemyX_speed;
    enemyY = enemyY + enemyY_speed;
    if(enemyX>1170   || enemyX<25){enemyX_speed = enemyX_speed * -1;}
    if(enemyY>760    || enemyY<25){enemyY_speed = enemyY_speed * -1;}
    image(enemy,dusmanX,dusmanY);
    dusmanX = dusmanX + xHızı;
    dusmanY = dusmanY + yHızı;
     if(dusmanX>1150   || dusmanX<50){xHızı = xHızı * -1;}
     if(dusmanY>750    || dusmanY<50){yHızı = yHızı * -1;}
    pushMatrix();
    translate(axeX,axeY);
    rotate(radians(PI*döndürme/3));
    image(axe,0,0);
    axeX = axeX + axeXHızı;
    axeY = axeY + axeYHızı;
    if(axeX>1150 || axeX<50){axeXHızı = axeXHızı * -1;}
    if(axeY>760 || axeY<50){axeYHızı = axeYHızı * -1;}
    döndürme+=5;
    popMatrix();
    
    image(heart,100,50,50,50);
    image(mainChar,50,50,75,75);
    image(flash, 150, 50, 50,50);
    image(double_arrow, 200, 50, 50, 50);
    image(triple_arrow, 250, 50, 50, 50);
    image(stars,300,50,50,50);
    image(shootingstar,350,50,50,50);
    
    pushMatrix();
    translate(80,170);
    rotate(PI/4);
    image(right_arrow, 0, 0, 80,80);
    popMatrix(); 
    
     pushMatrix();
    translate(80,370);
    rotate(PI/4);
    image(right_arrow, 0, 0, 80,80);
    popMatrix(); 
    
     pushMatrix();
    translate(80,570);
    rotate(PI/4);
    image(right_arrow, 0, 0, 80,80);
    popMatrix(); 
    
    fill(#CBC9C9);
    stroke(#FA8B03);
    strokeWeight(5);
    rect(150,150,300,50);
    fill(#F70F68);
    textSize(50);
    text("Başlat",225,190);
    fill(#CBC9C9);
    rect(150,350,300,50);
    rect(150,550,300,50);
    fill(#F70F68);
    textSize(50);
    text("Nasıl Oynanır",160,390);
    text("Çıkış", 225,590);
  }
//ana ekran
//oyun1
  if(screen==2){
        background(255);
        image(background2,600,400);
//OK KONTROL
    if(timer%7==0){
       kontrol1=true;
       run_once=false;
    }
    else if(timer%7==4){kontrol1=false;}
    
    if(timer%12==0){
       kontrol2=true;
       run_once2=false;
    }
    else if(timer%12==4){kontrol2=false;}
//OK KONTROL
//can
    fill(0);
    textSize(25);
    text("Can = "+can,25,50);
//can
//süre
    textSize(25);
    text("süre ="+timer,1000,50);
    if(frameCount % 60 == 0 && dur ){timer ++;}
      if(timer>=100){
        dur = false;
        ctrl=true;
        karakterU=false;
        karakterD=false;
        karakterR=false;
        karakterL=false;
        dusmanX=1000;
        dusmanY=600;
        xHızı=1;
        yHızı=1;
        fill(0);
        rectMode(CENTER);
        rect(600,300,400,200);
        fill(#62DE80);
        rect(600,290,325,50);
        fill(#338DA7);
        textSize(50);
        text("Sonraki Tur",450,310);
        fill(#62DE80);
        textSize(25);
        text("Yeni Tur için Sonraki Tur a basınız.",425,350);
      }      
            randomSeed(0);
            flash_x=random(200,800);
            if(timer==40){
            image(flash,flash_x,flash_y);
              flash_y+=10;
              if(dist(karakterX,karakterY,flash_x,flash_y)<75){
                   ctrl=false;
              }
            }
            randomSeed(0);
            heart_x=random(200,800);
            if(timer==50){
                image(heart,heart_x,heart_y);
                heart_y+=5;
              if(dist(karakterX,karakterY,heart_x,heart_y)<75){
                   can++;
                   can=constrain(can,0,6);       
              }
            }
//süre
    image(mainChar,karakterX,karakterY);
    if(ctrl==true){
    if(karakterU==true){karakterY-=2;}
    if(karakterD==true){karakterY+=2;}
    if(karakterR==true){karakterX+=2;}
    if(karakterL==true){karakterX-=2;}
    }
    else{
       if(karakterU==true){karakterY-=4;}
       if(karakterD==true){karakterY+=4;}
       if(karakterR==true){karakterX+=4;}
       if(karakterL==true){karakterX-=4;}
    }
    karakterX=constrain(karakterX,20,1178);
    karakterY=constrain(karakterY,30,772);
    if(dist(karakterX,karakterY,x1,y1)<30){
      can--;
      if(can % 2==0){
      karakterX=50;
      karakterY=100;
      }
      else{
      karakterX=1150;
      karakterY=700;
      }
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;}
     if(dist(karakterX,karakterY,x2,y2)<30){
      can--;
      if(can % 2==0){
      karakterX=50;
      karakterY=100;
      }
      else{
      karakterX=1150;
      karakterY=700;
      }
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;}
     if(dist(karakterX,karakterY,x3,y3)<30){
      can--;
      if(can % 2==0){
      karakterX=50;
      karakterY=100;
      }
      else{
      karakterX=1150;
      karakterY=700;
      }
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;}
     if(dist(karakterX,karakterY,x4,y4)<30){
      can--;
     if(can % 2==0){
      karakterX=50;
      karakterY=100;
      }
      else{
      karakterX=1150;
      karakterY=700;
      }
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;}
     if(dist(karakterX,karakterY,x5,y5)<30){
       can-=1;
      if(can % 2==0){
      karakterX=50;
      karakterY=100;
      }
      else{
      karakterX=1150;
      karakterY=700;
      }
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;
     }
       if(dist(karakterX,karakterY,x6,y6)<30){
       can-=1;
      if(can % 2==0){
      karakterX=50;
      karakterY=100;
      }
      else{
      karakterX=1150;
      karakterY=700;
      }
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;
     }
       if(dist(karakterX,karakterY,x7,y7)<30){
       can-=1;
      if(can % 2==0){
      karakterX=50;
      karakterY=100;
      }
      else{
      karakterX=1150;
      karakterY=700;
      }
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;
     }
       if(dist(karakterX,karakterY,x8,y8)<30){
       can-=1;
       
      if(can % 2==0){
      karakterX=50;
      karakterY=100;
      }
      else{
      karakterX=1150;
      karakterY=700;
      }
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;
     }
       if(dist(karakterX,karakterY,x9,y9)<30){
       can-=2;
      if(can % 2==0){
      karakterX=50;
      karakterY=100;
      }
      else{
      karakterX=1150;
      karakterY=700;
      }
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;
     }
       if(dist(karakterX,karakterY,x10,y10)<30){
       can-=2;
       if(can % 2==0){
      karakterX=50;
      karakterY=100;
      }
      else{
      karakterX=1150;
      karakterY=700;
      }
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;
     }
       if(dist(karakterX,karakterY,x11,y11)<30){
       can-=2;
      if(can % 2==0){
      karakterX=50;
      karakterY=100;
      }
      else{
      karakterX=1150;
      karakterY=700;
      }
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;
     }
     if(dist(karakterX,karakterY,x12,y12)<30){
       can-=2;
       if(can % 2==0){
      karakterX=50;
      karakterY=100;
      }
      else{
      karakterX=1150;
      karakterY=700;
      }
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;
     }
     if(dist(karakterX,karakterY,dusmanX,dusmanY)<75){
       can--;
       if(can % 2==0){
      karakterX=50;
      karakterY=100;
      }
      else{
      karakterX=1150;
      karakterY=700;
      }
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;
     }
    image(enemy,dusmanX,dusmanY);
    dusmanX = dusmanX + xHızı;
    dusmanY = dusmanY + yHızı;
     if(dusmanX>1150   || dusmanX<50){xHızı = xHızı * -1;}
     if(dusmanY>750    || dusmanY<50){yHızı = yHızı * -1;}
      if(timer==20){
         xHızı=-2;
         yHızı= 2;
      }
      if(timer==50){
         xHızı=-3;
         yHızı= 3;
      }
      if(timer==70){
         xHızı= 4;
         yHızı=-4;
      }
//arrows
    if(kontrol1 == true){
      if(run_once==false){
          run_once=true;
         x1=dusmanX;
         y1=dusmanY;
         
         x2=dusmanX;
         y2=dusmanY;
         
         x3=dusmanX;
         y3=dusmanY;
         
         x4=dusmanX;
         y4=dusmanY;
      }
      else{
        image(right_arrow,x1,y1);
         x1 +=5;
         y1 -=5;
        image(left_arrow,x2,y2);
         x2 -=5;
         y2 -=5;
        image(dright_arrow,x3,y3);
         x3 +=5;
         y3 +=5;
        image(lright_arrow,x4,y4);
         x4 -=5;
         y4 +=5;
      }
     }
      if(kontrol2==true){
        if(run_once2==false){
          run_once2=true;
            x5=dusmanX;
            y5=dusmanY;
            x6=dusmanX;
            y6=dusmanY;
            x7=dusmanX;
            y7=dusmanY;
            x8=dusmanX;
            y8=dusmanY;
            
            x9=dusmanX;
            y9=dusmanY;
            x10=dusmanX;
            y10=dusmanY;
            x11=dusmanX;
            y11=dusmanY;
            x12=dusmanX;
            y12=dusmanY;
        }
        else if(run_once2==true){
           image(double_arrow,x5,y5);
            x5+=5;
            y5+=5;
           image(double_arrow1,x6,y6);
            x6+=5;
            y6-=5;
           image(double_arrow2,x7,y7);
            x7-=5;
            y7+=5;
           image(double_arrow3,x8,y8);
            x8-=5;
            y8-=5;
           image(triple_arrow,x9,y9);
            x9-=5;
           image(triple_arrow1,x10,y10);
            x10+=5;
           image(triple_arrow2,x11,y11);
            y11+=5;
           image(triple_arrow3,x12,y12);
            y12-=5;
        }
      }
//arrows
  }
  if(screen==1){
    background(#B29191);
    image(mainChar,75,75,75,75);
    textSize(20);
    text("YARATICILAR:\n Can KUTLAY", 900, 25);
    text("Ana karakterimizi hareket ettirmek için yön tuşlarını kullanacaksınız.\n Canınız sıfırlandığında oyun sizi terk eder. :)", 125, 75);
    //level1
    textSize(40);
    text("-LEVEL 1-",150,200);
    pushMatrix();
    translate(100,250);
    rotate(PI/4);
    image(right_arrow, 0, 0, 40,40);
    popMatrix(); 
    textSize(20);
    text("Çıkan her oka değdiğinizde\n canınız 1 azalacaktır.",125,240);
    image(double_arrow, 100, 330, 40, 40);
    text("Çıkan her oka değdiğinizde\n canınız 1 azalacaktır.",125,325);
    image(triple_arrow, 100, 420, 40, 40);
    text("Çıkan her oka değdiğinizde\n canınız 2 azalacaktır.",125,410);
    image(enemy,100,510,40,40);
    text("Düşmana her değdiğinizde \n canınız 1 azalacaktır.",125,495);
    //level2
    textSize(40);
    text("-LEVEL 2-",500,200);
    textSize(20);
    image(stars,450,260,40,40);
    text("Çıkan her yıldıza değdiğinizde\n canınız 2 azalacaktır.",475,240);
    image(shootingstar,450,330,40,40);
    text("Çıkan her yıldıza değdiğinizde\n canınız 1 azalacaktır.",475,325);
    image(enemy2,450,420,40,40);
    text("Düşmana her değdiğinizde \n canınız 1 azalacaktır.",475,410);
    image(enemy2_1,450,510,40,40);
    text("Düşmana her değdiğinizde \n canınız 1 azalacaktır.",475,495);
    textSize(40);
    text("-LEVEL 3-",850,200);
    textSize(20);
    image(axe,800,260,40,40);
    text("Baltaya her değdiğinizde \n canınız 1 azalacaktır.",825,240);
    image(heart,75,725,50,50);
    text("Kalbe değdiğinizde canınız fullenir. Canınız en fazla 6 olabilir.",115,730);
    image(flash,75,650,50,50);
    text("Hızlandırıcıya dokunduğunuzda hızınız artar. Hızınız sadece bir kereliğine artar.",115,655);

    fill(#9F91B2);
    rect(1000,720,150,50);
    fill(0);
    textSize(40);
    text("geri dön", 1007,755);
  }
//oyun1
//oyun2
  if(screen==3){
    background(255);
    image(background1,600,400);
    textSize(25);
    text("Can = "+can,25,50);
    textSize(25);
    text("süre ="+timer2,1000,50);
    if(frameCount % 60 == 0 && dur1 ){timer2++;}
      if(timer2>=100){
        karakterU=false;
        karakterD=false;
        karakterR=false;
        karakterL=false;
        ctrl=true;
        enemyX=1000;
        enemyY=600;
        enemy2X=1000;
        enemy2Y=600;
        fill(0);
        rectMode(CENTER);
        rect(600,300,400,200);
        fill(#FCE0F9);
        rect(600,290,325,50);
        fill(#338DA7);
        textSize(50);
        text("Sonraki Tur",500,310);
        fill(#94BCF0);
        textSize(25);
        text("Yeni Tur için Sonraki Tura Basınız.",425,350);
      }
            randomSeed(0);
            flash_x=random(200,800);
            if(timer2==40){
            image(flash,flash_x,flash_y);
              flash_y+=10;
              if(dist(karakterX,karakterY,flash_x,flash_y)<75){
                   ctrl=false;
              }
            }
            randomSeed(0);
            heart_x=random(200,800);
            if(timer2==50){
                image(heart,heart_x,heart_y);
                heart_y+=5;
              if(dist(karakterX,karakterY,heart_x,heart_y)<75){
                   can++;
                   can=constrain(can,0,6);       
              }
            }
      image(mainChar,karakterX,karakterY);
        if(ctrl==true){
            if(karakterU==true){karakterY-=2;}
            if(karakterD==true){karakterY+=2;}
            if(karakterR==true){karakterX+=2;}
            if(karakterL==true){karakterX-=2;}
        }
        else{
           if(karakterU==true){karakterY-=4;}
           if(karakterD==true){karakterY+=4;}
           if(karakterR==true){karakterX+=4;}
           if(karakterL==true){karakterX-=4;}
        }
      karakterX=constrain(karakterX,20,1178);
      karakterY=constrain(karakterY,30,772);
      if(timer2 == 100){dur1 = false;}
      if(timer2<60){
            image(enemy2,enemyX,enemyY);
            enemyX = enemyX + enemyX_speed;
            enemyY = enemyY + enemyY_speed;
            if(enemyX>1170   || enemyX<25){enemyX_speed = enemyX_speed * -1;}
            if(enemyY>760    || enemyY<25){enemyY_speed = enemyY_speed * -1;}
      }
      else{ 
          image(enemy2_1,enemyX,enemyY);
          enemyX = enemyX + enemyX_speed2;
          enemyY = enemyY + enemyY_speed2;
          if(enemyX>1170   || enemyX<25){enemyX_speed2 = enemyX_speed2 * -1;}
          if(enemyY>760    || enemyY<25){enemyY_speed2 = enemyY_speed2 * -1;}
      }
      if(timer2==5  || timer2==15 || timer2==25 || timer2==35 || timer2==45 || timer2==55){bayrak1=true;}
      if(timer2==10 || timer2==20 || timer2==30 || timer2==40 || timer2==50 || timer2==60){bayrak2=true;}
      if(timer2==65 || timer2 ==70|| timer2==75 || timer2 ==80||timer2==85  || timer2 ==90||timer2 ==95){bayrak3=true;}
      if(bayrak1==true){
           if(run_once3==false){
              run_once3=true;
              p=50;
              xi=20;
           }
           else{
               if(frameCount % 60 == 0){sayac ++;}
               for (p=50;p<=1150;p+=200){
                      if(dist(karakterX,karakterY,p,xi+50)<50){
                       can--;
                      if(can % 2==0){
                        karakterX=50;
                        karakterY=100;
                        }
                        else{
                        karakterX=1150;
                        karakterY=700;
                       }
                       karakterU=false;
                       karakterD=false;
                       karakterR=false;
                       karakterL=false;
                       }
                   image(shootingstar,p,50+xi);
                   if(timer2<=31){xi+=0.5;}
                   else{xi+=1;}
                 }
               if(sayac==5){
                 bayrak1=false;
                 run_once3=false;
                 sayac=1;
               }
           }
      }
      if(bayrak2==true){
            if(run_once4==false){
                run_once4=true;
                p=150;
                xi=20;
             }
            else{
                if(frameCount % 60 == 0){sayac ++;}
                for (p=150;p<=1150;p+=200){
                      if(dist(karakterX,karakterY,p,xi+50)<50){
                       can--;
                       if(can % 2==0){
                        karakterX=50;
                        karakterY=100;
                        }
                        else{
                        karakterX=1150;
                        karakterY=700;
                        }
                       karakterU=false;
                       karakterD=false;
                       karakterR=false;
                       karakterL=false;
                       } 
                   fill(#F0DC02);
                   image(shootingstar,p,50+xi);
                   if(timer2<=31){xi+=0.5;}
                   else{xi+=1;}
                }
                if(sayac==5){
                  bayrak2=false;
                  run_once4=false;
                  sayac=1;
                }
            }
      }
      if(bayrak3==true){
        if(run_once5==false){
                run_once5=true;
                p=150;
                xi=20;
             }
            else{
                if(frameCount % 60 == 0){sayac ++;}
                for (p=150;p<=1150;p+=150){
                    if(dist(karakterX,karakterY,p,xi+50)<50){
                       can-=2;
                      if(can % 2==0){
                        karakterX=50;
                        karakterY=100;
                        }
                        else{
                        karakterX=1150;
                        karakterY=700;
                        }
                       karakterU=false;
                       karakterD=false;
                       karakterR=false;
                       karakterL=false;
                       } 
                 image(stars,p,50+xi);
                   if(timer2<=31){xi+=2;}
                   else{xi+=1;}
                 }
                if(sayac==5){
                  bayrak3=false;
                  run_once5=false;
                  sayac=1;
                }
            }
      }
      if(dist(karakterX,karakterY,enemyX,enemyY)<75){
       can--;
        if(can % 2==0){
        karakterX=50;
        karakterY=100;
        }
        else{
        karakterX=1150;
        karakterY=700;
        }
       karakterU=false;
       karakterD=false;
       karakterR=false;
       karakterL=false;}
  }
//oyun2
//oyun3
  if(screen==4){
    background(#93EAE5);
    image(background3,600,400);
    //can
    fill(0);
    textSize(25);
    text("Can = "+can,25,50);
    //can
    textSize(25);
    text("süre ="+timer3,1000,50);
    image(mainChar,karakterX,karakterY);
            randomSeed(0);
            flash_x=random(200,800);
            if(timer3==40){
            image(flash,flash_x,flash_y);
            flash_y+=10;
             if(dist(karakterX,karakterY,flash_x,flash_y)<75){
                        ctrl=false;
              }
             }
            randomSeed(0);
            heart_x=random(200,800);
            if(timer3==50){
            image(heart,heart_x,heart_y);
            heart_y+=5;
             if(dist(karakterX,karakterY,heart_x,heart_y)<75){
                   can++;
                   can=constrain(can,0,6);       
               }
            }
        if(ctrl==true){
            if(karakterU==true){karakterY-=2;}
            if(karakterD==true){karakterY+=2;}
            if(karakterR==true){karakterX+=2;}
            if(karakterL==true){karakterX-=2;}
        }
        else{
           if(karakterU==true){karakterY-=4;}
           if(karakterD==true){karakterY+=4;}
           if(karakterR==true){karakterX+=4;}
           if(karakterL==true){karakterX-=4;}
        }
    karakterX=constrain(karakterX,20,1178);
    karakterY=constrain(karakterY,30,772);
    if(timer3==0 || timer3==31 || timer3==71){
       kontrol_a=true;
       run_once6=false;
    }
    else if(timer3==6 || timer3==38 || timer3==78){kontrol_a=false;}
    
    if(timer3==7 || timer3==39 || timer3==94){
       kontrol_b=true;
       run_once7=false;
    }
    else if(timer3==14 || timer3==46 || timer3==99){kontrol_b=false;}
    
    if(timer3==15 || timer3==47){
       kontrol_c=true;
       run_once8=false;
    }
    else if(timer3==22 || timer3==54 || timer3==79){kontrol_c=false;}
    
    if(timer3==23 || timer3==55){
       kontrol_d=true;
       run_once9=false;
    }
    
    else if(timer3==30 || timer3==62|| timer3==86){kontrol_d=false;}
    
    if(timer3==63 || timer3==87){
       kontrol_e=true;
       run_once10=false;
    }
    
    else if(timer3==70||timer3==94){kontrol_e=false;}
    
    if(frameCount % 60 == 0 && dur2 ){timer3 ++;}
      if(timer3>=100){
        dur2 = false;
        karakterU=false;
        karakterD=false;
        karakterR=false;
        karakterL=false;
        ctrl=true;
        fill(0);
        rectMode(CENTER);
        rect(600,300,400,200);
        fill(#FC9CB9);
        rect(600,290,325,50);
        fill(#338DA7);
        textSize(50);
        text("KAZANDINIZ!!",500,310);
        fill(#62DE80);
        textSize(25);
        text("Çıkmak için tıklayınız. ",475,350);
        }
        if(kontrol_a==true){
           if(run_once6==false){
                run_once6=true;
                axe_x=0;
                axe_boy=64;
                axe_en=64;
             }
           else{
            image(bull,1100,150,100,100);
            pushMatrix();
            translate(axe_x+1200,150);
            rotate(radians(PI*döndürme/3));
            image(axe,0,0,axe_boy,axe_en);
            döndürme+=5;
                            if(dist(karakterX,karakterY,axe_x+1200,150)<75){
                             can--;
                            if(can % 2==0){
                              karakterX=50;
                              karakterY=100;
                              }
                              else{
                              karakterX=1150;
                              karakterY=700;
                              }
                             karakterU=false;
                             karakterD=false;
                             karakterR=false;
                             karakterL=false;
                            }
            popMatrix();
            axe_x-=5;
            axe_boy+=1;
            axe_en+=1;
                      
           }
        }
        if(kontrol_b==true){
           if(run_once7==false){
                run_once7=true;
                axe_x=0;
                axe_y=150;
                  axe_boy=64;
                axe_en=64;
             }
           else{
                image(bull,1100,150,100,100);
                pushMatrix();
                translate(axe_x+1200,50+axe_y);
                rotate(radians(PI*döndürme/3));
                image(axe,0,0,axe_boy,axe_en);
                döndürme+=5;
                popMatrix();
                axe_x-=5;
                axe_y+=3;
                axe_boy+=1;
                axe_en+=1;
                       if(dist(karakterX,karakterY,axe_x+1200,50+axe_y)<75){
                             can--;
                            if(can % 2==0){
                              karakterX=50;
                              karakterY=100;
                              }
                              else{
                              karakterX=1150;
                              karakterY=700;
                              }
                             karakterU=false;
                             karakterD=false;
                             karakterR=false;
                             karakterL=false;
                            }
           }
         }
           if(kontrol_c==true){
           if(run_once8==false){
                run_once8=true;
                axe_x=0;
                  axe_boy=64;
                axe_en=64;
             }
           else{
              image(bull,150,150,100,100);
              pushMatrix();
              translate(axe_x,150);
              rotate(radians(PI*döndürme/3));
              image(axe,0,0,axe_boy,axe_en);
              döndürme+=5;
              popMatrix();
              axe_x+=5;
              axe_boy+=1;
              axe_en+=1;
                   if(dist(karakterX,karakterY,axe_x,150)<75){
                             can--;
                            if(can % 2==0){
                              karakterX=50;
                              karakterY=100;
                              }
                              else{
                              karakterX=1150;
                              karakterY=700;
                              }
                             karakterU=false;
                             karakterD=false;
                             karakterR=false;
                             karakterL=false;
                            }
             }
           }
           if(kontrol_d==true){
           if(run_once9==false){
                run_once9=true;
                axe_x=0;
                axe_y=150;
                axe_boy=64;
                axe_en=64;
             }
           else{
            image(bull,150,150,100,100);
            pushMatrix();
            translate(axe_x,50+axe_y);
            rotate(radians(PI*döndürme/3));
            image(axe,0,0,axe_boy,axe_en);
            döndürme+=5;
            popMatrix();
            axe_x+=5;
            axe_y+=3;
            axe_boy+=1;
            axe_en+=1;
                 if(dist(karakterX,karakterY,axe_x,50+axe_y)<75){
                             can--;
                             if(can % 2==0){
                              karakterX=50;
                              karakterY=100;
                              }
                              else{
                              karakterX=1150;
                              karakterY=700;
                              }
                             karakterU=false;
                             karakterD=false;
                             karakterR=false;
                             karakterL=false;
                            }
           } 
        }
        if(kontrol_e==true){
           if(run_once10==false){
                run_once10=true;
                axe_y=150;
                axe_boy=64;
                axe_en=64;
             }
           else{
            image(bull,600,25,100,100);
            pushMatrix();
            translate(550,50+axe_y);
            rotate(radians(PI*döndürme/3));
            image(axe,0,0,axe_boy,axe_en);
            döndürme+=5;
            popMatrix();
            axe_y+=5;
            axe_boy+=1;
            axe_en+=1;
                if(dist(karakterX,karakterY,550,50+axe_y)<75){
                             can--;
                             if(can % 2==0){
                              karakterX=50;
                              karakterY=100;
                              }
                              else{
                              karakterX=1150;
                              karakterY=700;
                              }
                             karakterU=false;
                             karakterD=false;
                             karakterR=false;
                             karakterL=false;
                            }
           } 
        }
        
  }
//oyun3
}
void mousePressed(){
  if(screen ==0 && mouseX>150 && mouseX<450 && mouseY>150 && mouseY<200){screen=2;}     
  if(screen ==0 && mouseX>150 && mouseX<450 && mouseY>350 && mouseY<400){screen=1;}      
  if(screen ==1 && mouseX>1000 && mouseX<1150 && mouseY>720 && mouseY<770 ){screen=0;}   
  if(screen ==0 && mouseX>150 && mouseX<450 && mouseY>550 && mouseY<600){exit();  }       
  if(c==-10297728 ){screen=3;}  
  if(c==-204551){screen=4;}  
  if(c==-222023){exit();}
}
void keyPressed(){
  if(keyCode==UP){
     karakterD=false;
     karakterR=false;
     karakterL=false;
     karakterU=true;
  }
  if(keyCode==DOWN){
     karakterU=false;
     karakterR=false;
     karakterL=false;
     karakterD=true;
  }
  if(keyCode==RIGHT){
     karakterU=false;
     karakterD=false;
     karakterL=false;
     karakterR=true;
  }
  if(keyCode==LEFT){
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=true;
  }
  if(keyCode==SHIFT){
     karakterU=false;
     karakterD=false;
     karakterR=false;
     karakterL=false;
  }
   if(keyCode==ALT){
     screen = screen + 1;
  }
  if(keyCode==ENTER){
     dur2=false;
  }
  if(keyCode==CONTROL){
    if(screen==2){
      timer+=5;
    }
    if(screen==3){
      timer2+=5;
    }
     if(screen==4){
      timer3+=5;
    }
  }
}
