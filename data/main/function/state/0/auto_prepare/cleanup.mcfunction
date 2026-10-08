# 检查主人是否还在线
scoreboard players operation $value temp = @s entity_id
execute as @e[tag=check_prepare] if score @s entity_id = $value temp run tag @s add pending
execute unless entity @e[tag=pending] run kill @s
tag @a remove pending