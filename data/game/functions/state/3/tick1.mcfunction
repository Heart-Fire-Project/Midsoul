# 侦测玩家蹲下
execute as @a[team=alive,scores={state=0}] run function game:state/3/check_surround

# 进入柜子判定
execute as @e[tag=marker_black] at @s run execute as @a[distance=..5] at @s run function game:state/3/enter_locker

# 计算玩家冷却
scoreboard players operation @a[scores={skill_cd=1..}] skill_cd -= $cd_speed data
scoreboard players operation @a[scores={talent_1_cd=1..}] talent_1_cd -= $cd_speed data
scoreboard players operation @a[scores={talent_2_cd=1..}] talent_2_cd -= $cd_speed data
execute as @a[scores={skill_cd=..0,state=0},tag=!skill_on] run function game:state/3/skill/skill_active

# 刷新经验条
execute as @a run function game:state/3/set_exp

# 触发天赋
execute at @a[tag=skill_103_active] run particle end_rod ~ ~0.5 ~ 0 0 0 0 1 force @a
execute at @a[tag=skill_103_active] run particle end_rod ~ ~32 ~ 0 0 0 0 1 force @a
execute as @a[team=protect,tag=talent_104_active] at @s if entity @a[team=alive,distance=0..20,scores={state=0}] run effect clear @s invisibility
execute as @a[team=alive,scores={talent_1=2,talent_1_cd=..0,state=0}] at @s if entity @a[team=protect,distance=..12] run function game:state/3/skill/talent_002
execute as @a[team=alive,scores={talent_2=2,talent_2_cd=..0,state=0}] at @s if entity @a[team=protect,distance=..12] run function game:state/3/skill/talent_002

# 技能相关处理
stopsound @a * entity.player.levelup
kill @e[type=item,tag=!game_entity]
execute as @a[team=!admin] run function game:state/3/refresh_inventory