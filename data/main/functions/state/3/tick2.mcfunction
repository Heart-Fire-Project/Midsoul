# 第二状态 - 倒计时处理
scoreboard players remove @a[scores={state=1,countdown=1..}] countdown 1
execute at @a[team=soul,scores={state=1,countdown=0..}] run particle snowflake ~ ~0.5 ~ 0.2 0.1 0.2 0.03 24 force @a
execute at @a[team=protect,scores={state=1,countdown=0..}] run particle block redstone_block ~ ~0.2 ~ 0.2 0.1 0.2 1 24 force @a
execute as @a[team=soul,scores={state=1,countdown=0}] run function main:state/3/attack/dead
execute as @a[team=protect,scores={state=1,countdown=0}] run function main:state/3/attack/recover

# 灵气效果触发
execute if score $aura_rank temp matches 2 as @e[tag=blue] run data modify entity @s Glowing set value 0b
execute if score $aura_rank temp matches 2 at @a[team=soul] as @e[tag=blue,distance=..16] run data modify entity @s Glowing set value 1b

# 持续性特效
execute at @e[tag=S005] run particle minecraft:portal ~ ~0.2 ~ 0.2 0.3 0.2 1 8 force @a[team=soul]

# 防逃逸措施
execute as @a[team=!admin,tag=!game_player] at @s unless entity @e[tag=game_entity,distance=..150] run tp @s @r[team=protect]