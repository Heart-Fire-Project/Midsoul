# 展示标记
execute if score $show_mark data matches 1 run execute at @e[tag=marker_blue] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 0 1 force @a
execute if score $show_mark data matches 1 run execute at @e[tag=marker_purple] run particle witch ~ ~0.2 ~ 0.25 0.1 0.25 0 1 force @a
execute if score $show_mark data matches 1 run execute at @e[tag=marker_gold] run particle wax_on ~ ~0.5 ~ 0.25 0.3 0.25 2 1 force @a
execute if score $show_mark data matches 1 run execute at @e[tag=marker_blue] run particle glow ~ 70 ~ 1 0.1 1 0 10 force @a
execute if score $show_mark data matches 1 run execute at @e[tag=marker_purple] run particle witch ~ 70 ~ 1 0.1 1 0 10 force @a
execute if score $show_mark data matches 1 run execute at @e[tag=marker_gold] run particle wax_on ~ 70 ~ 1 0.3 1 2 10 force @a
execute if score $show_mark data matches 1 run execute at @e[tag=marker_blue] run particle glow ~ 120 ~ 1 0.1 1 0 10 force @a
execute if score $show_mark data matches 1 run execute at @e[tag=marker_purple] run particle witch ~ 120 ~ 1 0.1 1 0 10 force @a
execute if score $show_mark data matches 1 run execute at @e[tag=marker_gold] run particle wax_on ~ 120 ~ 1 0.3 1 2 10 force @a

# 放置标记
execute as @e[tag=summon_blue,type=shulker] at @s run function debug:settings/mark_blue
execute as @e[tag=summon_purple,type=shulker] at @s run function debug:settings/mark_purple
execute as @e[tag=summon_gold,type=shulker] at @s run function debug:settings/mark_gold
execute as @e[tag=summon_red,type=shulker] at @s run function debug:settings/mark_red
execute as @e[tag=summon_lock,type=shulker] at @s run function debug:settings/lock
execute as @e[type=shulker] at @s run kill @s