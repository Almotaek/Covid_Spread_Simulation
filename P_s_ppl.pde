int[] pick_social(int num_ppl, int perc){
  
  
int [] listNSD = new int[int((num_ppl*perc)/100)];

  for (int s =0 ; s< listNSD.length;s++){
  int pick = (int)random(num_ppl);
  boolean pick_again=false;
  
  for(int ss=s; ss>=0; ss--){
    if (pick == listNSD[ss]){
      pick_again = true; 
    }
    
  }
  if (pick_again){
    s--;
    }else{listNSD[s]=pick;}}
  
  return listNSD;
}
