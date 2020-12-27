
boolean stop = false;
int dim =20;
int dist =3;
boolean g;
boolean b;
int psoc = 20;
int psick = 2;
int h =700;
int pw =500;
Person[] ps ;
int gap = dist*dim;

int thing = 1;

int[] num_s_list= new int [0];
int[] num_h_list= new int [0];
int[] num_r_list= new int [0];

boolean menu = true;
  
void setup(){
  
  
  
 
  
  
  size(1800,1000);
 
  
   ps = new Person[(width/gap)*(h/gap)];
  
  for ( int x = 0; x < width/gap; x++){
    for ( int y = 0; y < h/gap; y++){
     
    ps[x+y*(width/gap)] = new Person(1,1,x*gap+(dim/2)+20,y*gap+(dim/2)+20);
    
    
    }
    
  } 

  
 
 
 
  
  
  
}

void draw(){
 
 ps[0].menu();
 if(thing ==1&&menu==false){
 int[] listNSD = new int [int((ps.length*psoc)/100)];
 
 
  listNSD = pick_social(ps.length,psoc);
  
 
  for (int i:listNSD){
    ps[i].sd=0;
  }
  
  
 int[] sick = new int [int((ps.length*psick)/100)];
 
 
  sick = pick_social(ps.length,psick);
  
 
  for (int i:sick){
    ps[i].state=2;
  }
 
thing =2;
 }
  
  if (!menu){
    

  
  
  background(255); 
  
  strokeWeight(2);
  line(0,h,width,h);
  line(pw,h,pw,height);
  strokeWeight(1);
  
  
  for ( int i = 0; i < ps.length; i++){
  
 
    
  ps[i].stateChecker();
  ps[i].display();
  ps[i].move();
  ps[i].checker();
  
  
  for ( int j = 0; j < ps.length; j++){
    if(i!=j){
    ps[i].others(ps[j]);
    }
  }
  
  
  
  
  
  
  }
  
 
  
  
  
  show_number();
  show_plot();
  
  }
  
}
