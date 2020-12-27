void show_number(){
  
   int c_h=0;
  int c_s=0;
  int c_r=0;
  
 
  
  for( Person p: ps){
    if (p.state == 1){
      c_h ++;
    }else if (p.state==2){c_s ++;}
    else{ c_r++;
  }

  
  }
  
  textSize(50);
  fill(246, 77, 255);
  text("RECOVER = "+ c_r, 200,h+80);
  textSize(50);
   fill(77, 178, 255);
  text("HEALTHY = "+ c_h, 200,h+180);
  textSize(50);
  fill(255, 199, 77);
  text("sick = "+ c_s, 200,h+270);
 
}
