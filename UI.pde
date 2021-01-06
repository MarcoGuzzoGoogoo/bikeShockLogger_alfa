    color yellow =color (255, 204, 0);
    color green =color(50,205,50);
    color red =color(240, 20, 20);
    color white =color(255);
    color black= color(0);
    color grey= color(167);




String drawButton (float x,float y, float w, float h,String text, String output,color filling){
  

  //if (x+10<=pressedX && pressedX<=(x+10+w-20) && y<=pressedY && pressedY<=y+h){ pressed=!pressed;}
  if (x<=pressedX && pressedX<=(x+w-20) && y<=pressedY && pressedY<=y+h){ pressed=true;}
  //println ("                                                                Mouse Y:"+pressedY);
  // println ("                                                               Mouse X:"+pressedX);
  // println ("                                                               posMouse Y:"+mouseY);
  // println ("                                                               psMouse X:"+mouseX);
  
  //println("  sopra "+pressed); 
  float txtSize;    
  stroke(255);
  if (pressed){stroke(green);strokeWeight(30);fill(green);txtSize=h/1.5  ;}
  else{stroke(255);strokeWeight(3);fill(filling); txtSize=h/2;output=null;}
  rect(x+10,y,w-20,h,10);
  textFont(labelFont,txtSize);
  fill(0);
  text(text,x+(w/10),y+((h/2)*1.4));
  
  
  //println("    medio "+pressed);
  pressed=false;
  //if(!pressed){output=null;}
  //println("      basso "+pressed);
  return (output);
  
  
}

void drawLabel (float x,float y, float w, float h,String label,String text,color filling){
  noFill();
  stroke(filling);
  rect(x+10,y,w-20,h,10);
  textSize(h/2);
  fill(255);
  textAlign(CENTER,CENTER);
  text(label+text,x+(w/2),y+(h/2));
  
}

void showInfo (){
 textFont(runnerFont, 15); 
 fill(255);
 
 int INFO_COLUMNS=5;
 int borderOffset=10;
 int colW=width/INFO_COLUMNS-borderOffset;
 int colH=height-borderOffset;
 
 text("FrameCount: "+frameCount,borderOffset, colH);
 if (serialPortOk) {fill(green);}
 text("COM:"+selectedPort_name+" BAUDRATE:"+baudrate, colW*1, colH);
 //text("BAUDRaTE:"+baudrate,colW*2, colH);
 fill(255);
 text("Front: "+valueInputA, colW*3, colH);
 text("Fourth: ", colW*4, colH);
  
}


void showFont(){
  background (0);
  int dist=100;
  textFont(stampFont, 100); 
  fill(255);      
  text("Stamp:", 50, dist*1);
 
 
  textFont(labelFont, 100); 
  fill(255);      
  text("Label:", 50, dist*2);
  
  textFont(runnerFont, 100); 
  fill(255);      
  text("Runner:", 50, dist*3);
    
}


void title (String title){

  textFont(stampFont, width/25); 
  fill(255);
  //int deb=width/10; 
  text(title,width/10 ,height/10);
  //if(debug){println(deb);}
  
}

 
//void showNextButton(
