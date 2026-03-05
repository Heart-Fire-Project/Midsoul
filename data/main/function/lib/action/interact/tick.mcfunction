# 能力
execute as @s[scores={talent_1=1},tag=interact_blue,tag=talent_1_on] run function main:lib/ability/base/modify_interact {value:"25"}
execute as @s[scores={talent_2=1},tag=interact_blue,tag=talent_2_on] run function main:lib/ability/base/modify_interact {value:"25"}
scoreboard players set $value temp 1
scoreboard players operation $value temp += $aura_rank data
execute store result storage ms:temp value int 5 run scoreboard players get $value temp
execute as @s[team=soul,scores={talent_1=7},tag=interacting] run function main:lib/ability/base/modify_interact with storage ms:temp
execute as @s[team=soul,scores={talent_2=7},tag=interacting] run function main:lib/ability/base/modify_interact with storage ms:temp

# 回响
execute if score $echo data matches 1 if entity @a[tag=echo_target] as @s[team=soul,tag=!echo_target,tag=interacting] run function main:lib/ability/base/modify_interact {value:"-50"}
execute if score $echo data matches 5 as @s[team=soul,tag=interacting] run function main:lib/ability/base/modify_interact {value:"-10"}
execute if score $echo data matches 8 as @s[tag=interact_blue,tag=interacting] run function main:lib/ability/base/modify_interact {value:"-50"}

# 机制
execute if score $undying data matches 1 as @s[tag=interact_gold,tag=interacting] run function main:lib/ability/base/modify_interact {value:"100"}
execute store result storage ms:temp value int 1 run scoreboard players get $balanced_speed state
execute as @s[team=soul] run function main:lib/ability/base/modify_interact with storage ms:temp
scoreboard players operation @s[tag=interact_blue,tag=interacting] temp *= $collect_extend state
scoreboard players operation @s[tag=interact_blue,tag=interacting] temp /= #100 data

scoreboard players operation @s[tag=interacting] tick.general += @s temp