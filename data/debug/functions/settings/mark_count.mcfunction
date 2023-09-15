# 重置
scoreboard players reset $mark_count_blue temp
scoreboard players reset $mark_count_purple temp
scoreboard players reset $mark_count_gold temp
scoreboard players reset $mark_count_black temp

# 统计
execute as @e[tag=marker_blue,distance=..300] run scoreboard players add $mark_count_blue temp 1
execute as @e[tag=marker_purple,distance=..300] run scoreboard players add $mark_count_purple temp 1
execute as @e[tag=marker_gold,distance=..300] run scoreboard players add $mark_count_gold temp 1
execute as @e[tag=marker_black,distance=..300] run scoreboard players add $mark_count_black temp 1

# 输出
tellraw @s ["\n",{"translate":"ms.debug.mark.count","fallback": " 300 格内的标点统计结果:","color": "#BC78EC"}]
tellraw @s [{"translate":"ms.debug.mark.count.blue","fallback": " 灵魂碎片 » %s","color": "blue","with":[{"score":{"name":"$mark_count_blue","objective":"temp"}}]}]
tellraw @s [{"translate":"ms.debug.mark.count.purple","fallback": " 传送门 » %s","color": "light_purple","with":[{"score":{"name":"$mark_count_purple","objective":"temp"}}]}]
tellraw @s [{"translate":"ms.debug.mark.count.gold","fallback": " 灵魂之灯 » %s","color": "gold","with":[{"score":{"name":"$mark_count_gold","objective":"temp"}}]}]
tellraw @s [{"translate":"ms.debug.mark.count.black","fallback": " 灵魂宝物箱 » %s","color": "gray","with":[{"score":{"name":"$mark_count_black","objective":"temp"}}]},"\n"]