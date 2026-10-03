# 排除已被链接的灵魂
tag @s remove S007a
scoreboard players operation $value temp = @s skill.007
execute as @a[tag=S007a] if score @s entity_id = $value temp run tag @s remove S007a