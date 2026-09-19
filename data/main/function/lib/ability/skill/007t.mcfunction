# 确认对方
scoreboard players operation $value temp = @s skill.007
execute as @a[team=soul,scores={state=0}] if score @s entity_id = $value temp run tag @s add S007

# 粒子显示 | 将按照双方连线中点作为粒子终点
function base:get_pos
execute store result storage ms:temp xA int 1 run data get storage r7s:base x 10
execute store result storage ms:temp yA int 1 run data get storage r7s:base y 10
execute store result storage ms:temp zA int 1 run data get storage r7s:base z 10
function base:caculate/selector_midpoint {target1:"@s",target2:"@p[tag=S007]"}
execute store result storage ms:temp xB int 1 run data get storage r7s:base x 10
execute store result storage ms:temp yB int 1 run data get storage r7s:base y 10
execute store result storage ms:temp zB int 1 run data get storage r7s:base z 10
function base:caculate/distance with storage ms:temp
execute store result storage r7s:base duration int 3 run scoreboard players get $front temp2
execute if data storage r7s:base {duration:0} run data merge storage r7s:base {duration:1}
execute store result score $y temp run data get storage r7s:base y 100
scoreboard players add $y temp 100
execute store result storage r7s:base y double 0.01 run scoreboard players get $y temp
execute if entity @p[tag=S007] at @s run function main:lib/ability/skill/007b with storage r7s:base
execute at @p[tag=S007] run function main:lib/ability/skill/007b with storage r7s:base

# 一旦距离超过，即刻结束
execute if score $front temp2 matches 16.. run playsound block.chain.break player @a ~ ~ ~ 1 1.2
execute if score $front temp2 matches 16.. at @p[tag=S007] run playsound block.chain.break player @a ~ ~ ~ 1 1.2
execute if score $front temp2 matches 16.. run function main:lib/ability/skill/007f

# 速度效果同步
data merge storage ms:temp {amplifier:-1}
data modify storage ms:temp amplifier set from entity @p[tag=S007] active_effects[{id:"minecraft:speed"}].amplifier
execute store result score $value temp run data get entity @p[tag=S007] active_effects[{id:"minecraft:speed"}].duration
execute if score $value temp matches 20.. run function main:lib/ability/skill/007a with storage ms:temp

# 去除标签
tag @a remove S007