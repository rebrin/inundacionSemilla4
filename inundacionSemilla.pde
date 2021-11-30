void setup(){
  size(800,600);
  background(255);
  beginShape();
    vertex(10,10);
    vertex(100,10);
    vertex(100,100);
    vertex(50,150);
    vertex(10,100);
    
  endShape(CLOSE);
  //noLoop();
}
void draw(){
}

void flood(int x,int y,color relleno, color borde){
   //si el pixel es igual al borde
   if(relleno==borde)return; //<>//
   color c=get(x,y);
   //si el pixel ya fue pintado
   if(c!=borde)return;
   //sembramos la semilla
   set(x,y,relleno);
   //conectivida  d 4 
   flood(x,y-1,relleno,borde);//arriba
   flood(x,y+1,relleno,borde);//abajo
   flood(x-1,y,relleno,borde);//izquierda
   flood(x+1,y,relleno,borde);//derecha
   return;
}

void mouseClicked(){
   flood(mouseX,mouseY,color(255,0,0),color(255)); 
   println(mouseX+" "+mouseY);
}
