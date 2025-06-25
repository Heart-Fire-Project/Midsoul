# 调试触发器定向
execute as @a[team=admin,scores={detect.interact=..-1}] run function debug:trigger

# 标记地点
execute as @e[tag=summon_blue,type=shulker] at @s run function debug:sub/mark/blue
execute as @e[tag=summon_purple,type=shulker] at @s run function debug:sub/mark/purple
execute as @e[tag=summon_gold,type=shulker] at @s run function debug:sub/mark/gold
execute as @e[tag=summon_gray,type=shulker] at @s run function debug:sub/mark/gray
execute as @e[tag=summon_red,type=shulker] at @s run function debug:sub/mark/red
execute as @e[tag=summon_lock,type=shulker] at @s run function debug:sub/mark/lock
execute as @e[tag=summon_marker] at @s run kill @s