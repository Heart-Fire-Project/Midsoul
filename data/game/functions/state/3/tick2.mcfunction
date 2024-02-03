# 第二状态快处理
scoreboard players remove @a[scores={state=1,countdown=1..}] countdown 1
execute at @a[team=alive,scores={state=1,countdown=0..}] run particle snowflake ~ ~0.5 ~ 0.2 0.1 0.2 0.03 24 force @a
execute at @a[team=protect,scores={state=1,countdown=0..}] run particle block redstone_block ~ ~0.2 ~ 0.2 0.1 0.2 1 24 force @a
execute as @a[scores={state=1,countdown=0},team=alive] run function game:state/3/soul_died
execute as @a[scores={state=1,countdown=0},team=protect] run function game:state/3/player_hit_fin

# 触发天赋
execute as @a[team=protect,scores={talent_1=4,talent_1_cd=..0},tag=!talent_104_active] at @s run function game:state/3/skill/talent_104
execute as @a[team=protect,scores={talent_2=4,talent_2_cd=..0},tag=!talent_104_active] at @s run function game:state/3/skill/talent_104
execute if entity @a[tag=talent_104_active] at @a[team=protect] run effect give @a[team=alive,distance=41..] glowing 1 0

# 灵气处理
execute if score $soul_rank temp matches 2 run function game:state/3/glow_give

# 特殊阶段
execute if score $now_play_time temp matches 18000..19200 run effect give @a[team=alive] glowing 1 0 true