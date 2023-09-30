# 侦测玩家蹲下
execute as @a[team=alive,scores={state=0}] run function game:state/3/check_surround_soul
execute as @a[team=protect,scores={state=0}] run function game:state/3/check_surround_protect

# 计算玩家冷却
scoreboard players operation @a[scores={skill_cd=1..}] skill_cd -= $cd_speed data
scoreboard players operation @a[scores={talent_1_cd=1..}] talent_1_cd -= $cd_speed data
scoreboard players operation @a[scores={talent_2_cd=1..}] talent_2_cd -= $cd_speed data
execute as @a[scores={skill_cd=..0,state=0},tag=!skill_on] run function game:state/3/skill/skill_active
execute as @a[scores={item=1..}] run function game:state/3/check_offhand

# 统计
scoreboard players add $temp stat_temp_play_time 1

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

# 本状态特有的部分
scoreboard players remove $portal countdown 1
execute as @a[team=alive,scores={state=0}] at @s if entity @e[tag=purple,distance=..0.7] run function game:state/4/soul_escape
execute if score $portal countdown matches 0 run function game:state/4/check_end
scoreboard players reset $portal_count temp
execute as @e[tag=purple] run scoreboard players add $portal_count temp 1