# 这个检测是 9XX 的调试检测
execute as @a run function debug:trigger_check

# 你标记了一处地点
execute as @e[tag=summon_blue,type=shulker] at @s run function debug:sub/panel/mark_blue
execute as @e[tag=summon_purple,type=shulker] at @s run function debug:sub/panel/mark_purple
execute as @e[tag=summon_gold,type=shulker] at @s run function debug:sub/panel/mark_gold
execute as @e[tag=summon_gray,type=shulker] at @s run function debug:sub/panel/mark_gray
execute as @e[tag=summon_red,type=shulker] at @s run function debug:sub/panel/mark_red
execute as @e[tag=summon_lock,type=shulker] at @s run function debug:sub/panel/mark_lock
execute as @e[type=shulker] at @s run kill @s