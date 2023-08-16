# 状态 5 - 结算
scoreboard players set $state data 5

# Bossbar 调整
bossbar set midsoul:heed players
bossbar set midsoul:warn players
bossbar set midsoul:info players

# 游戏结束
schedule function game:state/5/reset 1t replace