# 刷新物品栏 - 设置 storage 前置
execute store result storage ms:inventory item short 1 run scoreboard players get @s item
execute store result storage ms:inventory skill short 1 run scoreboard players get @s skill
execute store result storage ms:inventory talent_1 short 1 run scoreboard players get @s talent_1
execute store result storage ms:inventory talent_2 short 1 run scoreboard players get @s talent_2

execute store result storage ms:inventory S004 short 1 run scoreboard players get @s skill.004
execute store result storage ms:inventory T004 short 1 run scoreboard players get @s talent.004
execute store result storage ms:inventory T007 short 1 run scoreboard players get $talent_007 data
execute store result storage ms:inventory S102 short 1 run scoreboard players get @s skill.102
execute store result storage ms:inventory T107 short 1 run scoreboard players get @s talent.107
execute if data storage ms:inventory {"S004":0s} run data modify storage ms:inventory S004 set value 1s
execute if data storage ms:inventory {"T004":0s} run data modify storage ms:inventory T004 set value 1s
execute if data storage ms:inventory {"S102":0s} run data modify storage ms:inventory S102 set value 1s
execute if data storage ms:inventory {"T107":0s} run data modify storage ms:inventory T107 set value 1s

scoreboard players operation $tick temp = @s tick.talent_1
scoreboard players operation $tick temp /= #10 data
scoreboard players add $tick temp 19
function base:caculate/time {unit:"sec",tick:"$tick",source:"temp"}
execute if score $sec temp2 matches ..0 run scoreboard players set $sec temp2 1
execute store result storage ms:inventory tick_talent_1 short 1 run scoreboard players get $sec temp2

scoreboard players operation $tick temp = @s tick.talent_2
scoreboard players operation $tick temp /= #10 data
scoreboard players add $tick temp 19
function base:caculate/time {unit:"sec",tick:"$tick",source:"temp"}
execute if score $sec temp2 matches ..0 run scoreboard players set $sec temp2 1
execute store result storage ms:inventory tick_talent_2 short 1 run scoreboard players get $sec temp2

scoreboard players operation $tick temp = @s tick.item
scoreboard players operation $tick temp *= #-1 data
scoreboard players operation $tick temp /= #10 data
scoreboard players add $tick temp 19
function base:caculate/time {unit:"sec",tick:"$tick",source:"temp"}
execute if score $sec temp2 matches ..0 run scoreboard players set $sec temp2 1
execute store result storage ms:inventory tick_item short 1 run scoreboard players get $sec temp2

execute store result storage ms:inventory weapon short 1 run scoreboard players get @s extra.weapon

function main:state/3/inventory with storage ms:inventory