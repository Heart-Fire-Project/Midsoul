# 状态 4 - 逃离
scoreboard players set $sub_state data 0
scoreboard players set $state data 4

# Bossbar 调整
bossbar set midsoul:heed players
bossbar set midsoul:warn players
bossbar set midsoul:info players @a[team=!admin]

# 最后的游戏开始了
function game:state/4/start