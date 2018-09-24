; *** Custom G-code for right extruder printing with FlashForge Creator Pro ***
M73 P0 ; enable build progress
M135 T0 ; load right extruder offsets
G162 X Y F1600 ; home XY maximum
M400 ; Wait for moves to finish
G161 Z F1000 ; home Z minimum
M400 ; Wait for moves to finish
G92 Z-5 ; set Z to -5
G1 Z0 ; move Z to 0
M400 ; Wait for moves to finish
G161 Z F100 ; home Z slowly
M400 ; Wait for moves to finish
M132 X Y Z A B ; recall home offsets
M135 T1 ; load left extruder offsets
G1 X-100 Y-70 Z30 F1600 ; move to wait position left hand side of the table
M400 ; Wait for moves to finish
M18 A B; disable extruder steppers while heating
M126 S[fan_speed_pwm]
M140 S[bed0_temperature] T0
M104 S[extruder1_temperature] T1
M134 T0 ; stabilize bed temperature
M133 T1 ; stabilize left extruder temperature
M17 A B; re-enable extruder steppers
G92 A0 B0 ; zero extruders
G1 Z0.4 ; position nozzle
G1 X-100 Y-70 F1600 ; reposition nozzle
G1 X-95 Y-70 E15 F400 ; purge nozzle
G1 X-90 Y-70 Z0.10 F600 ; slow wipe
G1 X-100 Y-70 Z0.6 F1600 ; lift
M73 P1 ;@body (notify GPX body has started)
; **** end of start.gcode ****