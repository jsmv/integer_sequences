Triangulares sequence;
void setup() {
  size(800,700);
  sequence = new Triangulares ();  
 }

void draw() {
  background(550);
  strokeWeight(2); 
sequence.display(0);
}

class Triangulares extends Sequence { 
  String author(){ 
    return "Pitágoras";   
  } 
   String description(){
      return  "Pitágoras";
  }    
   int compute (int n){
     println((n*(n+1))/2);
     return n;
   }
   int [] toArray(int n){
     int[] seq = new int[n];
     for (int i=0; i<n; i++)
      seq[i] = compute((i*(i+1))/2);
     return seq;
     
   }
   String toString(int n){
    return Arrays.toString(toArray(n)); 
  }   
  void display (int n){
    int y=685;
    int x=15;
    int s=n;
    for(int i=0;i<n;i++){
      for(int j=0;j<s;j++){
         rectMode(CENTER); 
         ellipse(x,y,20,20); 
         x=x+20;              
       }  
       y=y-20;
       s=s-1;
       x=15;
     }
     println("N-esimo termino de los numeros triangulares");
     compute(6);
     println("N primeros terminos de los numeros triangulares");
     toArray(6);
     display (30);   
   } 
 } 