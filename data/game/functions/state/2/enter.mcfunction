# 状态 2 - 准备
scoreboard players set $state data 2
function game:state/2/map_load

# Bossbar 设置
bossbar set midsoul:info players

# 设置标题
title @a times 3 54 2

# 队伍设定
team modify alive nametagVisibility hideForOtherTeams
team modify alive friendlyFire false

# 准备下一步
schedule function game:state/2/player_enter 2t replace