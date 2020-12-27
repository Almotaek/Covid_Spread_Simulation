class Person{
  
  
  float x; 
float y; 


int state  ; 

float dist;

float ranx;
float rany;

int curedTime = 138 ;

int frameSick;

int sd;


Person(int sodi, int s,float tx,float ty){
  state = s;
   sd = sodi;
  
 
  x= tx;
  y= ty;
  
  
 
 
  
  ranx=random(-5,5);
  rany=random(-5,5);
  
 
  
 
  
}

  void menu(){
    
      fill(100, 200, 100);
      textAlign(CENTER, CENTER);
      textSize((height+width)/35);
      text(" KHALID ALMOTAERY  ", width/2, height-100);
      
      
      
      rect(width/5.1, height/2, width/5, height/10);
      textSize(19);
      fill(255);
      text("WITH A LOT SOCIAL DISTANCING  ", (width/5.1)+(width/10), (height/2)+(height/20));
      
      fill(255, 100, 100);      
      rect(width/1.6, height/2, width/5, height/10);
      textSize(19);
      fill(255);
      text("WITH  LITTLE SOCIAL DISTANCING  ", (width/1.6)+(width/10), (height/2)+(height/20));
      
      if (mouseX >=width/1.6 && mouseX <= (width/1.6)+(width/5)
        && mouseY >= height/2 && mouseY <=(height/2)+(height/10) && mousePressed) {
        psoc = 20;
        b = true;
         menu =false;
      }
      //checking if the play button was clicked to start the game:
      if (mouseX >= width/5.1 && mouseX <= (width/5.1)+(width/5)
        
     && mouseY >= height/2  && mouseY <= (height/2)+(height/10)&& mousePressed) {
       psoc = 80;
       g = true;
       menu =false;
      }
 
    
  }
  
  void stateChecker(){
    
 
    
    
    if (state == 1){
  fill(77, 178, 255);
  }else if (state == 2){
  fill(255, 199, 77);
  frameSick++;
  }
  else{
  fill(246, 77, 255);
  }
  
  if (frameSick == curedTime){
    state = 3;
  }
    
  }
  
  void display(){
    
  
  circle(x,y,dim);
  
  
 
    
    
    
  }
  
  void move(){
    
    if(stop == false){
  x = x + ranx*sd;
  
  y = y + rany*sd;
    }
    
    
  }
  
  
  
  void checker(){
    
 
  
  
 
  
  if (x >= width-dim/2){ ranx = ranx*-1;}
  if (x <= dim/2){ ranx = ranx*-1;}
  
  if (y >= 700-dim/2){ rany = rany*-1;}
  if (y <= dim/2){ rany = rany*-1;}
  
  

    
  }
  
  
  void others(Person pp){
    
    float difx = pp.x-this.x;
    float dify = pp.y-this.y;
    
    float dis = sqrt(difx*difx+dify*dify);
    
    float  min = dim;
    
    if (dis < min ){
      float angle = atan2(dify,difx);
      float targetX = x + cos(angle)*min;
      float targetY = y+ sin(angle)*min;
      float ax= (targetX-pp.x)*0.05;
      float ay= (targetY-pp.y)*0.05;
      
      this.ranx -=ax;
      this.rany -=ay;
      
      pp.ranx +=ax;
      pp.rany +=ay;
      
      
      
     
      if(pp.state == 2&&this.state==1){
      this.state = 2;
      }}
      
      
      
      
      
    
      
      
      
    
    
    
    
    
    
  }
  
  
  
  
}
