# 侦测玩家蹲下
execute as @a[team=alive,scores={state=0}] run function game:state/3/check_surround

# 计算玩家冷却
scoreboard players operation @a[scores={skill_cd=1..}] skill_cd -= $cd_speed data
scoreboard players operation @a[scores={talent_1_cd=1..}] talent_1_cd -= $cd_speed data
scoreboard players operation @a[scores={talent_2_cd=1..}] talent_2_cd -= $cd_speed data
execute as @a[scores={skill_cd=..0,state=0},tag=!skill_on] run function game:state/3/skill/skill_active

# 刷新经验条
execute as @a run function game:state/3/set_exp

# 杂项处理
execute as @a at @s if block ~ ~-1 ~ farmland run effect give @s slow_falling 1 0 true
stopsound @a * entity.player.levelup
execute at @a[tag=skill_103_active] run particle end_rod ~ ~0.5 ~ 0 0 0 0 1 force @a

# 额外附加的部分
scoreboard players remove $portal countdown 1
execute as @a[team=alive,scores={state=0}] at @s if entity @e[tag=purple,distance=..0.3] run function game:state/4/soul_escape
execute if score $portal countdown matches 0 run function game:state/4/check_end