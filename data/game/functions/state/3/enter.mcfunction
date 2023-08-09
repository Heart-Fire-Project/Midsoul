# 状态 3 - 游戏
scoreboard players set $state data 3

# 设置标题
title @a times 3 94 2

# 队伍设定
team modify protect nametagVisibility hideForOtherTeams

# 进行下一步
function game:state/3/start
execute as @a run function game:state/3/give_effect