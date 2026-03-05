execute as @n[tag=marker_gold,tag=!turned,distance=..2,nbt={Rotation:[-90.0f,0.0f]}] run data merge entity @s {Rotation:[0.0f,0.0f],Tags:[marker_gold,turned]}
execute as @n[tag=marker_gold,tag=!turned,distance=..2,nbt={Rotation:[90.0f,0.0f]}] run data merge entity @s {Rotation:[-180.0f,0.0f],Tags:[marker_gold,turned]}
execute as @n[tag=marker_gold,tag=!turned,distance=..2,nbt={Rotation:[-180.0f,0.0f]}] run data merge entity @s {Rotation:[-90.0f,0.0f],Tags:[marker_gold,turned]}
execute as @n[tag=marker_gold,tag=!turned,distance=..2,nbt={Rotation:[0.0f,0.0f]}] run data merge entity @s {Rotation:[90.0f,0.0f],Tags:[marker_gold,turned]}
tag @e remove turned
title @n[team=admin,type=player,distance=..5] actionbar {translate:"ms.mark.turn",fallback:"邻近灵灯已经转向",color:"#85C077"}