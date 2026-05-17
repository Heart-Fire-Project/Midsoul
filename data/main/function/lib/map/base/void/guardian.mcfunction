particle block_marker{block_state:{Name:"barrier"}} ~ ~ ~ 0 0 0 0 1 force @a
effect give @s blindness 2 0 true
effect give @s glowing 3 0 true
playsound entity.ender_pearl.throw player @s 0 1000000 0 120000 0.7

execute if score $map data matches 5 run tp @s 2047.5 78 -1965.5 -60 0
execute if score $map data matches 5 run particle smoke 2047.5 78.2 -1965.5 0.2 0.3 0.2 0.05 12 force @a