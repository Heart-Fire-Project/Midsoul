# 状态 0 - 大厅
scoreboard players set $state data 0
execute as @a[team=!admin] run function game:state/0/player_enter

# 边界重置
worldborder set 10000000

# Bossbar 设置
bossbar set midsoul:info players @a
bossbar set midsoul:info style notched_10

# 重置实体
function game:state/0/refresh_entity

# 重置倒计时
scoreboard players set $start countdown 7777777