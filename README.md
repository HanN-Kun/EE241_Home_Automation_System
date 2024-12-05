# EE241_Home_Automation_System_

  Week 1
  #First assignment is basically determine whick type of home automation we will chose our project.And research abaout the required parts,system or 
  application that we will use for this project. 

  Week 2
  #Second assigment of this project is about writting the verilog description for our home automation system.Now let me introduce our home automation
  system.Our automation is abaout security of our home system includes various sensor.list of sensor types goes on like window sensor,door sensor ,motion 
  sensor ,temperature sensor,water leak sensor,glass brake sensor and we also have a alarm button in case of emergency sutiation.Our purpose is clear first
  adjust this system on our basys3 card and then we may also adapt our system to mobile app.
  
  #Verilog descripton has a property.We want that our system give us signal so that we could know that what emergency is we are facing off so we use fault 
  command in our verilog system fault help us to detect which sensor give the input that creates emergency.Purpose of this property through the basys3 card 
  led's.Our code also includes a testbench so that we may see conclusions of our code.
    
  Week 3
  #Third assignment of this project is abaout adapting our last combinational circuit verilog description into a sequential circuit verilog description for 
  this purpose we adapt a SR latch module to our verilog code.This SR latch module simply work as When the Set input is 1 and the Reset input is 0, the 
  latch output (Q) is set to 1.This means the latch "remembers" the 1 state.When the Reset input is 1 and the Set input is 0, the latch output (Q) is reset 
  to 0.This clears the stored state of the latch.If both Set and Reset inputs are 0, the latch retains its current state.This allows the latch to "remember" 
  its previous state until an input changes.In our home security project:The SR latch is used for each sensor to "store" its triggered state.
  When a sensor is activated (for example, a window is open or a door is forced), the Set (S) input is triggered, and the latch output is set to 1,indicating 
  a fault.If the system is reset (via the Reset (R) input), the latch output is cleared back to 0, resetting the fault status.This allows the system to track
  the triggered state of each sensor independently, even if the sensor returns to its normal condition after being triggered.

















