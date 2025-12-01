# 先查看是否有充能的玩家
tag @s remove charging_purple
execute if entity @a[tag=purple_interact,tag=interacting,distance=..0.7] run tag @s add charging_purple
execute if score $4_finale state matches 1 if entity @a[team=soul,distance=..3,scores={state=0}] run tag @s add charging_purple

# 人数结算
scoreboard players reset $num temp
execute as @a[tag=purple_interact,tag=interacting,distance=..0.7] run scoreboard players add $num temp 1

# 效果结算
effect give @a[tag=purple_interact,tag=interacting,distance=..0.7] glowing 1
execute if score $num temp matches 1.. run particle sculk_charge_pop ~ ~0.3 ~ 0.2 0.3 0.2 0.01 4 force @a
execute if score $num temp matches 1.. run scoreboard players add $4_chargesound tick.general 1
execute if score $num temp matches 1.. if score $4_chargesound tick.general matches 9.. run playsound block.sculk.charge player @a 0 1000000 0 120000
execute if score $4_chargesound tick.general matches 11.. run scoreboard players set $4_chargesound tick.general 0

# 逸散进度结算
scoreboard players operation $minus temp = $interact_speed setting
scoreboard players operation $minus temp /= #5 data
execute unless score $num temp matches 1.. if score @s tick.general matches 1.. run scoreboard players operation @s tick.general -= $minus temp
execute if score @s tick.general matches ..-1 run scoreboard players set @s tick.general 0

# 极速充能结算
execute if score $4_finale state matches 1 if entity @a[team=soul,distance=..3,scores={state=0}] run function main:state/4/charge/finale

# 充能进度结算 | 求平均值，再乘相应倍率
# 交互人数 |   1   |   2   |   3   |   4
# 进度倍率 |  1.0  |  1.3  |  1.5  |  1.6
scoreboard players set $plus temp 0
execute as @a[tag=purple_interact,tag=interacting,distance=..0.7] run scoreboard players operation $plus temp += @s temp
scoreboard players operation $plus temp /= $num temp
execute store result storage ms:temp value int 1 run scoreboard players get $plus temp
execute if score $num temp matches 2 store result score $plus temp run data get storage ms:temp value 1.3
execute if score $num temp matches 3 store result score $plus temp run data get storage ms:temp value 1.5
execute if score $num temp matches 4.. store result score $plus temp run data get storage ms:temp value 1.6
execute if score $num temp matches 1.. run scoreboard players operation @s tick.general += $plus temp

# 充能完毕？
execute if score @s tick.general matches 80000.. run function main:state/4/charge/finish