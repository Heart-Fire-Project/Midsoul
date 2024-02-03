# 还是那些
function main:state/3/tick1

scoreboard players remove $4_portal countdown 1
execute as @a[team=soul,scores={state=0}] at @s if entity @e[tag=purple,distance=..0.7] run function main:state/4/finish
execute if score $portal temp matches 1 if score $4_portal countdown matches 0 run function main:state/4/new_portal with storage ms:map
tag @a[team=protect] add double_damage
effect give @a[team=soul] glowing infinite 6 true
function main:state/4/check_end
function main:state/4/bossbar