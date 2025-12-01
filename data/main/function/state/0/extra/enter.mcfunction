effect give @s blindness 2 0 true
effect give @s slow_falling 1 0 true
playsound entity.ender_eye.death ambient @s 0 1000000 0 120000
tp @s -1001 -2 -1001 -90.0 0
execute at @s unless entity @a[distance=0.01..50] run schedule function main:state/0/refresh/extra 5t replace