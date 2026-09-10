# 计算技能冷却降低值
scoreboard players operation $value temp = @s skill.106
scoreboard players operation $value temp *= #20 data
scoreboard players operation $value temp *= #-1 data
execute store result storage ms:temp value int 1 run scoreboard players get $value temp
function main:lib/ability/base/modify_cooldown with storage ms:temp