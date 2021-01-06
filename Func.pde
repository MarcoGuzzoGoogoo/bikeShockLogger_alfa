void devDebug(){
  
  showFont();
  
}

void portPage(){
  
  title("Select your COM port:");
 
  for (int i=0;i<Serial.list().length;i++){
    if(debug){println(i+" "+Serial.list()[i]);}
    portButton= drawButton ((width/2)-(width/3)/2 ,height/8*(i+2), width/3, height/10,(i+" "+Serial.list()[i]),("ListPointer:"+i),grey);
    if (portButton != null) {
      String selSplitter[]=split(portButton,':');    
      selectedPort_pointer=int(selSplitter[1]);
      selectedPort_name=Serial.list()[int(selectedPort_pointer)];
      if(debug){println("selectedPort_name->"+selectedPort_name);}
    }
  }
    confirmButton= drawButton ((width/2)-(width/3)/2 ,height/8*(6), width/3, height/10,"Confirm","confirmed",grey);
    if (confirmButton == "confirmed"){
       serialPortOk=true;
        myPort =new Serial(this, Serial.list()[selectedPort_pointer],baudrate);
    }
}
