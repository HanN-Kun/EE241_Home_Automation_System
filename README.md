# EE241_Home_Automation_System_

  First Assignment 1.
  #First assignment is basically determine whick type of home automation we will chose our project.And research abaout the required parts,system or 
  application that we will use for this project. 

  Second Assignment 2. 
  #Second assigment of this project is about writting the verilog description for our home automation system.Now let me introduce our home automation
  system.Our automation is abaout security of our home system includes various sensor.list of sensor types goes on like window sensor,door sensor ,motion 
  sensor ,temperature sensor,water leak sensor,glass brake sensor and we also have a alarm button in case of emergency sutiation.Our purpose is clear first
  adjust this system on our basys3 card and then we may also adapt our system to mobile app.Verilog descripton has a property.We want that our system give 
  us signal so that we could know that what emergency is we are facing off so we use fault command in our verilog system fault help us to detect which sensor
  give the input that creates emergency.Purpose of this property through the basys3 card led's.Our code also includes a testbench so that we may see
  conclusions of our code.
    
  Third Assignment 3.
  #Third assignment of this project is abaout adapting our last combinational circuit verilog description into a sequential circuit verilog description for 
  this purpose we adapt a SR latch module to our verilog code.This SR latch module simply work as When the Set input is 1 and the Reset input is 0, the 
  latch output (Q) is set to 1.This means the latch "remembers" the 1 state.When the Reset input is 1 and the Set input is 0, the latch output (Q) is reset 
  to 0.This clears the stored state of the latch.If both Set and Reset inputs are 0, the latch retains its current state.This allows the latch to "remember" 
  its previous state until an input changes.In our home security project:The SR latch is used for each sensor to "store" its triggered state.
  When a sensor is activated (for example, a window is open or a door is forced), the Set (S) input is triggered, and the latch output is set to 1,indicating 
  a fault.If the system is reset (via the Reset (R) input), the latch output is cleared back to 0, resetting the fault status.This allows the system to track
  the triggered state of each sensor independently, even if the sensor returns to its normal condition after being triggered.

  Fourt Assignment 4.
  #Fourth assignment of this project is about continue our work with the adapting sequential circuit to our automation system and drawing both state table and 
  diagram.In verilog part we create D,JK and T flip-flop modules in to our code.Then we adapt these modules for our sensors so that we can take advantage of
  properties of flip flops.We use JK flip-flops to window and door sensor.Temperature sensor to T flip-flop and Motion sensor to D flip-flop.We also wanted 
  to use segment part in our card so that we may display the number of sensor which give alarm can be seen on the segment part.But we could not add this part
  yet.

  Fifth Assignment 5.
  #Fifth assignment,In this part we add some new properties to our project.These are counter part and a panic button which is trigger the general alarm by manualy.Counter part objective is counting the 
  total alerting sensor's and total general alarm number.These numbers are just beign calculated nothing more.Also sev-seg part which we try to adapt at week four is cancelled due to counter adaptation on 
  week 5.We add counter into our code by a another module called "Counter".Then this module summoned in topmodule such that we adapt counter.also We update the state diagram for latest version.Another 
  update is that FSM verilog code which describes the State's in verilog code.

  Sixth Assignment 6.
  #Final assignment,In this part we try to create a simulation for our home automation system.For this purpose we try to change temperature sensor due to logical problems.Now new temperature work with a 
  threshold value and controlls the temperature according to this threshold value.For this new type of temperature check we added a new module named as "TemperatureCheck".Abaout the simulation part we try
  to integrate our project such that it might actually work real.We also try to observe and analyze  the simulation outcomes. 


  Since In resportories there so many files for systems to clarify this mess;

  
  First Assignment 1 verilog Files  named as "Home_Automation_SYS_Last".
  
  Second Assignment 2 verilog Files named as "EE241_Home_Security_Sys_with_SeqCircuit".
  
  Third Assignment 3 verilog Files named as "Home_Security_UpdatedSeqCircuit".
  
  Fourth Assignment 4 verilog Files named as "Home_Security_UpdatedSeqCircuit" which stayyed as the same.
  
  Fifth Assignment 5 verilog Files named as "EE241_Security_Sys_" and "EE241_Security_Sys_FSM".

  Sixth Assignment 6 verilog filed named as "EE241_Sec_Sys_Final_Version" this file is uploaded as rar format due to its size.

  
  















