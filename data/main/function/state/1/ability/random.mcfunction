# 仅在当前是 0 时写入结果
data merge storage ms:temp {min:1}
execute store result storage ms:temp max int 1 run scoreboard players get $skill_max data
function base:random with storage ms:temp
scoreboard players operation @s[scores={skill=0}] skill = $random temp2
execute store result storage ms:temp max int 1 run scoreboard players get $talent_max data
function base:random with storage ms:temp
scoreboard players operation @s[scores={talent_1=0}] talent_1 = $random temp2
function base:random with storage ms:temp
scoreboard players operation @s[scores={talent_2=0}] talent_2 = $random temp2

# 如果二天赋重复则归零，并再跑一次
execute if score @s talent_2 = @s talent_1 run scoreboard players set @s talent_2 0
execute as @s[scores={talent_2=0}] run function main:state/1/ability/random