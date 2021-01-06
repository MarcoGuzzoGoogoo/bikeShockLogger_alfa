import processing.serial.*;
Serial myPort;
/*
//*-------------------------------------------INSTRUCTIONS
d - got to Func devDebug

*/
//-------------------------------------------SETTINGS

int baudrate= 115200;



//boolean fullScreen = false;                  //it doesn't work ???????
//boolean fullScreen = true;

//boolean debug =true;
boolean debug =false;


//---------------------------------------------------
String portButton;

String selectedPort;
int selectedPort_pointer;
String selectedPort_name;
String confirmButton;
boolean serialPortOk= false;


//---------------------------------------------------

String posInputA; 
long  millisInputA=0;
int   valueInputA;
//---------------------------------------------------

PFont stampFont;
PFont labelFont;
PFont runnerFont;


int pressedX,pressedY;
boolean pressed=false;
public void setup() {  
  //fullScreen();
  size(1000,800);
  
  labelFont = createFont("Monospaced.bold", 50);
  stampFont = createFont("Monospaced.bolditalic", 50);
  runnerFont = createFont("Monospaced.italic", 50);
  
  //java.util.Arrays.fill(millisInputA, "");

  
   
   
   
   
}
public void draw() {
 background(0);
 showInfo();
 
 if (!serialPortOk){portPage();}
 else{
   background (50);   
   title ("\t "+posInputA+"\t\t Millis: "+millisInputA+"\tmm: "+valueInputA);
   showInfo();
 }
 
 
 //textFont(runnerFont, 15); 
 //fill(255);      
 //text("FrameCount: "+frameCount, 10, height-10);
  
  
  
 
 
 
 
}
