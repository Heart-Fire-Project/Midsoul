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

# 自定义房间
xp set @a[x=6,y=-14,z=9,dx=5,dy=3,dz=11] 7419 levels
execute as @a[level=7419] unless entity @s[x=6,y=-14,z=9,dx=5,dy=3,dz=11] if score $state data matches 0 run function main:state/0/exp/loop
execute if entity @a[x=6,y=-14,z=9,dx=5,dy=3,dz=11] run data modify block 9 -14 19 Items set from block 9 -16 19 Items