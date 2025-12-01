scoreboard players remove @s skill.105s 1

# 计算应得时间
execute if score @s skill.105s matches 0 run scoreboard players operation $value temp = @s tick.skill
execute if score @s skill.105s matches 0 run scoreboard players operation $value temp *= #-1 data
execute if score @s skill.105s matches 0 run scoreboard players operation $value temp /= #100 data
execute if score @s skill.105s matches 0 run function base:caculate/time {unit:"sec",tick:"$value",source:"temp"}
execute if score @s skill.105s matches 0 store result storage ms:temp value int 1 run scoreboard players get $sec temp2

# 应用时间
execute if score @s skill.105s matches 0 run function main:state/3/ability/skill/105b with storage ms:temp