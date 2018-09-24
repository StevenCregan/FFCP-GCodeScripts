;- - - Custom G-code for Octoprint Connect with FlashForge Creator Pro - - -
;- - - by DrLex/Steven Cregan; 2016/09-2018/09. Released under Creative Commons Attribution License. - - -
G4 P1000;
T0 ; start with the right extruder
M127; disable fan
G21 ; set units to mm
M320 ; acceleration enabled for all commands that follow
G162 X Y F1600; home XY axes maximum
M400 ; Wait for moves to finish
G161 Z F1200; home Z axis Minimum
M400 ; Wait for moves to finish
G92 X114 Y72 Z0 E0 B0 ; set (rough) reference point (XYZEB for GPX)
G1 Z15 F1200 ; move the bed down again
M400 ; Wait for moves to finish
G161 Z F100 ; accurately home Z axis minimum
M400 ; Wait for moves to finish
M132 X Y Z A B ; Recall stored home offsets (accurate reference point)
M400 ; Wait for moves to finish
G1 Z125 F1200 ;
M400 ; Wait for moves to finish
G1 X0 Y0 F1200 ;
M400 ; Wait for moves to finish
M18 ; Disable Steppers 
;- - - End custom G-code for Octoprint Connect - - -