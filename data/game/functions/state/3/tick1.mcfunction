# 侦测玩家蹲下
execute as @a[team=alive] run function game:state/3/check_surround

# 计算玩家冷却
scoreboard players operation @a[scores={skill_cd=1..}] skill_cd -= $cd_speed data
scoreboard players operation @a[scores={talent_1_cd=1..}] talent_1_cd -= $cd_speed data
scoreboard players operation @a[scores={talent_2_cd=1..}] talent_2_cd -= $cd_speed data

# 进行技能触发
execute as @a[scores={skill_cd=..0},tag=!skill_on,tag=!dying] run function game:state/3/skill/skill_active
execute as @a[scores={talent_1_cd=..0},tag=!talent_1_on,tag=!dying] run function game:state/3/skill/talent_1_active
execute as @a[scores={talent_2_cd=..0},tag=!talent_2_on,tag=!dying] run function game:state/3/skill/talent_2_active

# 计算技能效果
execute as @a[scores={skill_cd=..0},tag=skill_on,tag=!dying] run function game:state/3/skill/skill_timer
execute as @a[scores={talent_1_cd=..0},tag=talent_1_on,tag=!dying] run function game:state/3/skill/talent_1_timer
execute as @a[scores={talent_2_cd=..0},tag=talent_2_on,tag=!dying] run function game:state/3/skill/talent_2_timer

# 救一下农田
execute as @a at @s if block ~ ~-1 ~ farmland run effect give @s slow_falling 1 0 true