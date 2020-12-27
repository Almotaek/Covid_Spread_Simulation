void show_plot(){
  
  
  int c_h=0;
  int c_s=0;
  int c_r=0;
  
  
  for( Person p: ps){
    if (p.state == 1){
      c_h ++;
    }else if (p.state==2){c_s ++;}
    else{ c_r++;
  }}
  num_s_list=append(num_s_list,c_s);
  num_h_list=append(num_h_list,c_h);
  num_r_list=append(num_r_list,c_r);
  
  int plot_height= height-h;
  
  for (int r =0; r<num_s_list.length;r++){
  int rect_s=(int)map(num_s_list[r],0,ps.length,0,plot_height);
  
   
  stroke(255, 199, 77);
  rect(pw+r,height-rect_s,1,height);
  
  stroke(0);
  
    
  int rect_h=(int)map(num_h_list[r],0,ps.length,0,plot_height);
  
   
  stroke(77, 178, 255);
  rect(pw+r,h,1,rect_h);
   stroke(0);
  
  int rect_r=(int)map(num_r_list[r],0,ps.length,0,plot_height);
  
   
       stroke(246, 77, 255);
  rect(pw+r,rect_h+h,1,rect_r);
   stroke(0);
  
  
 if (c_s == 0){stop = true; 
 
 
  if (g){
    noStroke();
 fill(255);
  rect(width/1.4,h,width-(width/1.4),height-h);
  stroke(0);
  strokeWeight(1);
   textSize(17);
  fill(246, 77, 255);
  text("The less circles move, the graph gets 'flattened' ", width-250,h+150);
 
 textSize(12);
  fill(246, 77, 255);
  text("The faster the the circles trun to the pinkish color, the more the graph gets flattened  ", width-250,h+180);
  }else{ noStroke();
 fill(255);
  rect((width/2)+10,h,width-(width/2)+10,height-h);
  stroke(0);
  strokeWeight(1);
    textSize(25);
  fill(246, 77, 255);
  text("The more circle move, the graph does not get 'flattened' ", width-400,h+150);
 
 textSize(20);
  fill(246, 77, 255);
  text("The slower the the circles trun to the pinkish color, the less the graph gets flattened  ", width-400,h+180);
  }
 }
  
  
  
  
  
  
  
  }
  

  
 
  

  
  
  
  }
  
  
  
