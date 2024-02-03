# 妈的，思遥方写了一个压根用不了的功能，我还得打个补丁
execute store result storage ms:inventory item short 1 run scoreboard players get @s item
execute store result storage ms:inventory skill short 1 run scoreboard players get @s skill
execute store result storage ms:inventory talent_1 short 1 run scoreboard players get @s talent_1
execute store result storage ms:inventory talent_2 short 1 run scoreboard players get @s talent_2

execute store result storage ms:inventory talent_007 short 1 run scoreboard players get $talent_007 temp
execute store result storage ms:inventory skill_004 short 1 run scoreboard players get @s skill_004
execute store result storage ms:inventory skill_102 short 1 run scoreboard players get @s skill_102
execute store result storage ms:inventory talent_107 short 1 run scoreboard players get @s talent_107
execute if data storage ms:inventory {skill_004:0s} run data modify storage ms:inventory skill_004 set value 1s
execute if data storage ms:inventory {skill_102:0s} run data modify storage ms:inventory skill_102 set value 1s
execute if data storage ms:inventory {talent_107:0s} run data modify storage ms:inventory talent_107 set value 1s

function main:state/3/inventory with storage ms:inventory