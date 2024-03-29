# 重置
scoreboard players set $mark_count_blue temp 0
scoreboard players set $mark_count_purple temp 0
scoreboard players set $mark_count_gold temp 0
scoreboard players set $mark_count_gray temp 0

# 统计
execute as @e[tag=marker_blue,distance=..300] run scoreboard players add $mark_count_blue temp 1
execute as @e[tag=marker_purple,distance=..300] run scoreboard players add $mark_count_purple temp 1
execute as @e[tag=marker_gold,distance=..300] run scoreboard players add $mark_count_gold temp 1
execute as @e[tag=marker_gray,distance=..300] run scoreboard players add $mark_count_gray temp 1

# 输出
tellraw @s ["\n",{"translate":"ms.mark.count","fallback":"半径 300 格内的标点统计结果：","color":"#7367F0"}]
tellraw @s [{"translate":"ms.mark.count.purple","fallback":" 传送门 » %s","color":"light_purple","with":[{"score":{"name":"$mark_count_purple","objective":"temp"}}]}]
tellraw @s [{"translate":"ms.mark.count.blue","fallback":" 灵魂碎片 » %s","color":"blue","with":[{"score":{"name":"$mark_count_blue","objective":"temp"}}]}]
tellraw @s [{"translate":"ms.mark.count.gold","fallback":" 灵魂之灯 » %s","color":"gold","with":[{"score":{"name":"$mark_count_gold","objective":"temp"}}]}]
tellraw @s [{"translate":"ms.mark.count.gray","fallback":" 灵魂宝物箱 » %s","color":"#CCCCCC","with":[{"score":{"name":"$mark_count_gray","objective":"temp"}}]},"\n"]