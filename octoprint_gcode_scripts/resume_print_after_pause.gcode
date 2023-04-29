{% if pause_position.x is not none %}

M83 ; relative extruder

; prime nozzle
G1 E-5 F4500
G1 E5 F4500
G1 E5 F4500


M82 ; absolute E


G90 ; absolute XYZ

; reset E
G92 E{{ pause_position.e }}

; move back to pause position XYZ
G1 X{{ pause_position.x }} Y{{ pause_position.y }} Z{{ pause_position.z }} F4500

; reset to feed rate before pause if available
{% if pause_position.f is not none %}G1 F{{ pause_position.f }}{% endif %}
{% endif %}