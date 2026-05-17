particle block_marker{block_state:{Name:"barrier"}} ~ ~ ~ 0 0 0 0 1 force @a
effect give @s blindness 3 0 true
effect give @s glowing 7 0 true
effect give @s slowness 7 1 true
playsound minecraft:entity.ender_pearl.throw player @s 0 1000000 0 120000 0.7

execute at @n[team=guardian] run tag @n[tag=marker_gold,distance=4..] add target
tp @s @n[tag=target]
execute at @n[tag=target] run particle smoke ~ ~0.2 ~ 0.2 0.3 0.2 0.05 12 force @a
tag @e remove target