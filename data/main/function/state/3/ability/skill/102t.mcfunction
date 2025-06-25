# 确定玩家位置
scoreboard players operation $player_id temp = @s skill.102
execute as @a[team=soul] if score @s player_id = $player_id temp run tag @s add S102_t
execute as @a[tag=S102_t] run function base:get_pos

# 获取粒子生成位置
execute store result storage ms:temp x double 1 run data get storage r7s:base x 1
execute store result storage ms:temp y double 1 run data get storage r7s:base y 1
execute store result storage ms:temp z double 1 run data get storage r7s:base z 1

# 获取粒子运动时间 | 速度为 20 格/秒
function base:caculate/selector_distance {target1:"@s",target2:"@p[tag=S102_t]"}
execute store result storage ms:temp duartion int 1 run scoreboard players get $front temp2

# 执行粒子生成
function main:state/3/ability/skill/102a with storage ms:temp

# 清除 tag
tag @a remove S102_t