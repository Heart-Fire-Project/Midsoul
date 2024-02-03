# 重新入场
tag @s remove soul_dead
tp @s @e[limit=1,tag=death_mark]
kill @e[tag=death_mark]

# 设置计时
scoreboard players set @s countdown 601
scoreboard players set @s[scores={stat_temp_dying=1}] countdown 451
scoreboard players set @s[scores={stat_temp_dying=2}] countdown 301
scoreboard players set @s[scores={stat_temp_dying=3..}] countdown 151
scoreboard players set @s state 1

function main:state/3/effect
function main:state/3/new_light

# 统计数据
scoreboard players add @s stat_temp_dying 1
scoreboard players add @a[scores={talent_1=3},team=soul] stat_temp_talent 1
scoreboard players add @a[scores={talent_2=3},team=soul] stat_temp_talent 1