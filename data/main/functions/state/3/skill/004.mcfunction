# 特效
playsound block.brewing_stand.brew player @s 0 1000000 0 1000000

# 判定
function base:random {"max":100,"min":1,"storage":data}

# 重定向
execute if score @s skill_004 < $random data run function main:state/3/skill/004a
execute if score @s skill_004 >= $random data run function main:state/3/skill/004b

# 设置计时
scoreboard players set @s skill_tick -240

# 记录数据
scoreboard players add @s[scores={skill_004=..33}] skill_004 7
scoreboard players add @s stat_temp_skill 1
tag @s add skill_on