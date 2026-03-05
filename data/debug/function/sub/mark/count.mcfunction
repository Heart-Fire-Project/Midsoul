# 重置
scoreboard players set $blue_count temp 0
scoreboard players set $gold_count temp 0
scoreboard players set $purple_count temp 0
scoreboard players set $gray_count temp 0

# 统计
execute as @e[tag=marker_blue,distance=..300] run scoreboard players add $blue_count temp 1
execute as @e[tag=marker_gold,distance=..300] run scoreboard players add $gold_count temp 1
execute as @e[tag=marker_purple,distance=..300] run scoreboard players add $purple_count temp 1
execute as @e[tag=marker_gray,distance=..300] run scoreboard players add $gray_count temp 1

# 输出
scoreboard players set $mark_count temp 1
function debug:panel/4