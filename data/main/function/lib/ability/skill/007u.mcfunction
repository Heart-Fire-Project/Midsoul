# 确认对方
scoreboard players operation $value temp = @s skill.007
execute as @a[team=soul,scores={state=0}] if score @s entity_id = $value temp run tag @s add S007

# 获取玩家名
execute as @p[tag=S007] run function base:get_playername {x:"0",y:"-7",z:"0"}
data modify storage ms:inventory S007t set from storage r7s:base playername
execute unless entity @p[tag=S007] run data modify storage ms:inventory S007t set value "N/A"

# 获取距离
function base:caculate/selector_distance {target1:"@s",target2:"@p[tag=S007]"}
execute store result storage ms:inventory S007 int 1 run scoreboard players get $front temp2

# 去除标签
tag @a remove S007