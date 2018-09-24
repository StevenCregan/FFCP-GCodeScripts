; **** Replicator 1 dual cancel.gcode ****
M0 ; unconditional stop (may not be supported)
M73 P100 ; end build progress
G1 Z150 F800 ; send Z axis to bottom of machine
M140 S0 T0 ; cool down HBP
M104 S0 T0 ; cool down right extruder
M104 S0 T1 ; cool down left extruder
M127 ; stop blower fan
G162 X Y F1200 ; home XY maximum
M400 ; Wait for moves to finish
M18 ; disable stepper
; **** end of end.gcode ****