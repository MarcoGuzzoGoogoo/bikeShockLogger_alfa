void mousePressed(){
 pressedX=mouseX;
 pressedY=mouseY;
 if (debug){
   println ("Mouse Y:"+pressedY);
   println ("Mouse X:"+pressedX);
 }
  
}  

void keyPressed() {
  final int k = keyCode;

  if (k == 'D')
    if (looping){devDebug();  noLoop();} else{ loop();}
    
    
  if (key == CODED) {
    if (keyCode == UP) {}
    else if (keyCode == DOWN) {}
    else if (keyCode == LEFT) {}
    else if (keyCode == RIGHT) {}
    else if (keyCode == BACKSPACE) {}
    else if (keyCode == RETURN) {}
  } 
    
}


void serialEvent(Serial myPort) {
    String inString=myPort.readStringUntil (':');
    if (inString != null) {
 
      //Front>%lu:%d",tStamp,getFront);     
      
      String input[] = split(inString, '>');
         
      
      posInputA= trim(input[0]);
      millisInputA= Long.parseLong(trim(input[1]));
      //str1 = str1.substring( 0, str1.length()-1 );
      input[2]=input[2].substring(0,input[2].length()-1 );
      valueInputA= Integer.parseInt(trim(input[2]));
      //println(input[2]);
      
      //String value[] = split(inString, ':');
      
      //valueInputA= Integer.parseInt(trim(value[0]));
      
    }
}
