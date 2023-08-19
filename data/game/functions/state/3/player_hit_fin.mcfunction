scoreboard players set @s state 0
function game:state/3/give_effect
function game:state/3/refresh_inventory

# 天赋计算
scoreboard players set @s[scores={talent_1=4}] talent_1_cd 18000
scoreboard players set @s[scores={talent_2=4}] talent_2_cd 18000
tag @s remove talent_104_active