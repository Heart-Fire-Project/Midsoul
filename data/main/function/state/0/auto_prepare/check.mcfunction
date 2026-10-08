# 显示有显著提示
title @s actionbar [{text:"▹ ",color:"#F3CA6C"},{translate:"ms.info.auto_prepare.0",fallback:"进行任意移动以自动准备"}," ◃"]

# 检查是否进行了任意操作
scoreboard players operation $value temp = @s entity_id
execute as @e[tag=check_prepare_m,distance=..0.1] if score @s entity_id = $value temp run tag @s add pending
execute store result score $valueA0 temp run data get entity @s Rotation[0] 0.1
execute store result score $valueA1 temp run data get entity @s Rotation[1] 0.1
execute store result score $valueB0 temp run data get entity @n[tag=pending] Rotation[0] 0.1
execute store result score $valueB1 temp run data get entity @n[tag=pending] Rotation[1] 0.1
execute unless score $valueA0 temp = $valueB0 temp run tag @s remove check_prepare
execute unless score $valueA1 temp = $valueB1 temp run tag @s remove check_prepare

# 最终审判
title @s[tag=!check_prepare] actionbar [{text:"▸ ",color:"#84DE02"},{translate:"ms.info.auto_prepare.1",fallback:"已自动准备，可手动取消"}," ◂"]
execute as @s[tag=!check_prepare] run function main:lib/event/prepare
execute as @s[tag=!check_prepare] run kill @e[tag=pending]
tag @e remove pending