# 刷新物品栏 - 设置 storage 前置
execute store result storage ms:inventory relic int 1 run scoreboard players get @s relic
execute store result storage ms:inventory skill int 1 run scoreboard players get @s skill
execute store result storage ms:inventory talent_1 int 1 run scoreboard players get @s talent_1
execute store result storage ms:inventory talent_2 int 1 run scoreboard players get @s talent_2

execute store result storage ms:inventory T004 int 1 run scoreboard players get @s talent.004
scoreboard players set $value temp 1
scoreboard players operation $value temp += $aura_rank data
execute store result storage ms:inventory T007 int 5 run scoreboard players get $value temp
execute store result storage ms:inventory T107 int 1 run scoreboard players get @s talent.107
execute store result storage ms:inventory S004 int 1 run scoreboard players get @s skill.004
execute if data storage ms:inventory {S004:0} run data merge storage ms:inventory {S004:1}
execute if entity @s[team=soul,scores={talent_1=4},tag=talent_1_on] run data merge storage ms:inventory {T004:1}
execute if entity @s[team=soul,scores={talent_2=4},tag=talent_2_on] run data merge storage ms:inventory {T004:1}
execute if data storage ms:inventory {T004:0} run data merge storage ms:inventory {T004:1}
execute if data storage ms:inventory {T107:0} run data merge storage ms:inventory {T107:1}
scoreboard players operation $tick temp = @s tick.talent_1
execute if score @s tick.talent_1 matches ..-1 run scoreboard players operation $tick temp *= #-1 data
scoreboard players operation $tick temp /= #100 data
scoreboard players add $tick temp 19
function base:caculate/time {unit:"sec",tick:"$tick",source:"temp"}
execute if score $sec temp2 matches ..0 run scoreboard players set $sec temp2 1
execute store result storage ms:inventory tick_talent_1 int 1 run scoreboard players get $sec temp2

scoreboard players operation $tick temp = @s tick.talent_2
execute if score @s tick.talent_2 matches ..-1 run scoreboard players operation $tick temp *= #-1 data
scoreboard players operation $tick temp /= #100 data
scoreboard players add $tick temp 19
function base:caculate/time {unit:"sec",tick:"$tick",source:"temp"}
execute if score $sec temp2 matches ..0 run scoreboard players set $sec temp2 1
execute store result storage ms:inventory tick_talent_2 int 1 run scoreboard players get $sec temp2

scoreboard players operation $tick temp = @s tick.relic
execute if score @s tick.relic matches ..-1 run scoreboard players operation $tick temp *= #-1 data
scoreboard players operation $tick temp /= #100 data
scoreboard players add $tick temp 19
function base:caculate/time {unit:"sec",tick:"$tick",source:"temp"}
execute if score $sec temp2 matches ..0 run scoreboard players set $sec temp2 1
execute store result storage ms:inventory tick_relic int 1 run scoreboard players get $sec temp2

execute store result storage ms:inventory weapon int 1 run scoreboard players get @s extra.weapon
execute store result storage ms:inventory disable int 1 run scoreboard players get @s tick.disable
execute store result storage ms:inventory disable_max int 1 run scoreboard players get @s tick.disable_max
execute if data storage ms:inventory {disable_max:0} run data merge storage ms:inventory {disable_max:1}
execute store result storage ms:inventory silent int 1 run scoreboard players get @s tick.silent
execute store result storage ms:inventory silent_max int 1 run scoreboard players get @s tick.silent_max
execute if data storage ms:inventory {silent_max:0} run data merge storage ms:inventory {silent_max:1}

# 根据特定需求修改部分数据
execute if entity @s[team=guardian,scores={skill=5},tag=skill_on] run data merge storage ms:inventory {disable_max:70}
execute if entity @s[team=guardian,scores={skill=5,skill.105=0},tag=skill_on] run data merge storage ms:inventory {disable:1}
execute if entity @s[team=guardian,scores={skill=5,skill.105=1},tag=skill_on] run data merge storage ms:inventory {disable:35}

function main:lib/event/universal/inventory_ability with storage ms:inventory