{% if pause_position.x is not none %}
; relative XYZE
G91 ;relative positioning
M83 :set E to relative positioning


G1 Z+5 E-5 F4500 ; retract filament, move Z slightly upwards

; absolute XYZE
M82
G90

; move to a safe rest position, adjust as necessary
G1 X0 Y0
{% endif %}