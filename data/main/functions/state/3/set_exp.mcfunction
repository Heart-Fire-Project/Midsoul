# 设置玩家经验等级计数
scoreboard players reset @s temp
execute if entity @s[scores={state=1}] run scoreboard players operation @s temp = @s countdown
execute if entity @s[scores={state=0}] run scoreboard players operation @s temp = @s skill_tick
execute if entity @s[tag=skill_on] run scoreboard players operation @s temp *= #-1 data
scoreboard players add @s[scores={state=1}] temp 9
scoreboard players add @s[scores={state=0},tag=skill_on] temp 19
scoreboard players add @s[scores={state=0},tag=!skill_on] temp 199
scoreboard players operation @s[scores={state=1}] temp /= #10 data
scoreboard players operation @s[scores={state=0},tag=skill_on] temp /= #20 data
scoreboard players operation @s[scores={state=0},tag=!skill_on] temp /= #200 data
scoreboard players set @s[scores={temp=..0}] temp 0

# 设置玩家经验填充计数
scoreboard players set @s[tag=collecting] cacu 600
scoreboard players set @s[tag=opening] cacu 800
scoreboard players set @s[tag=healing] cacu 1000
scoreboard players set @s[scores={state=1,stat_temp_dying=1},team=soul] cacu 600
scoreboard players set @s[scores={state=1,stat_temp_dying=2},team=soul] cacu 450
scoreboard players set @s[scores={state=1,stat_temp_dying=3},team=soul] cacu 300
scoreboard players set @s[scores={state=1,stat_temp_dying=4},team=soul] cacu 150
scoreboard players set @s[scores={state=1},team=protect] cacu 70

function base:set_exp {cacu:"cacu",source_current:"countdown",source_max:"cacu",source_level:"temp",source_mem:"data",4:"#4",16:"#16",61:"#61",64:"#64",182:"#182",256:"#256"}