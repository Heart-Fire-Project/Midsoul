## 直接乘算与加算
# 能力
execute as @s[scores={talent_1=1},tag=interact_blue,tag=talent_1_on] run function main:lib/action/interact/percent {value:"25"}
execute as @s[scores={talent_2=1},tag=interact_blue,tag=talent_2_on] run function main:lib/action/interact/percent {value:"25"}
scoreboard players set $value temp 1
scoreboard players operation $value temp += $aura_rank data
execute store result storage ms:temp value int 3 run scoreboard players get $value temp
execute as @s[team=soul,scores={talent_1=7}] run function main:lib/action/interact/percent with storage ms:temp
execute as @s[team=soul,scores={talent_2=7}] run function main:lib/action/interact/percent with storage ms:temp
execute if entity @p[team=guardian,scores={talent_1=8},distance=..12] unless entity @s[team=guardian] run function main:lib/action/interact/percent {value:"-15"}
execute if entity @p[team=guardian,scores={talent_2=8},distance=..12] unless entity @s[team=guardian] run function main:lib/action/interact/percent {value:"-15"}
execute if entity @p[team=guardian,scores={talent_1=8},distance=..12] unless entity @s[tag=interact_gold] run function main:lib/action/interact/percent {value:"-15"}
execute if entity @p[team=guardian,scores={talent_2=8},distance=..12] unless entity @s[tag=interact_gold] run function main:lib/action/interact/percent {value:"-15"}

# 回响
execute if score $echo data matches 5 as @s[team=soul] run function main:lib/action/interact/percent {value:"-10"}
execute if score $echo data matches 8 as @s[tag=interact_blue] run function main:lib/action/interact/percent {value:"-50"}

# 机制
execute if score $undying data matches 1 as @s[tag=interact_gold] run function main:lib/action/interact/percent {value:"100"}
execute store result storage ms:temp value int 1 run scoreboard players get $balanced_speed state
execute as @s[team=soul] run function main:lib/action/interact/percent with storage ms:temp

# 保底
execute if score @s temp < $interact_pity data run scoreboard players operation @s temp = $interact_pity data

## 最终乘算
# 能力

# 回响
execute if score $echo data matches 1 if entity @a[tag=echo_target] run scoreboard players operation @s[team=soul,tag=!echo_target,tag=interact_purple] temp /= #5 data

# 机制
scoreboard players operation @s[tag=interact_blue] temp *= $collect_extend state
scoreboard players operation @s[tag=interact_blue] temp /= #100 data

scoreboard players operation @s[tag=interacting] tick.interact += @s temp
scoreboard players operation @s[tag=interacting_p] tick.interact += @s temp

## 特效存储
execute if entity @p[team=guardian,scores={talent_1=8},distance=..24] unless entity @s[team=guardian] run particle ash ~ ~0.1 ~ 0.2 0.2 0.2 1 10 force @a
execute if entity @p[team=guardian,scores={talent_2=8},distance=..24] unless entity @s[team=guardian] run particle ash ~ ~0.1 ~ 0.2 0.2 0.2 1 10 force @a