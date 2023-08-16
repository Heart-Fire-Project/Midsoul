# 初始状态
execute if score $state data matches 1 run function game:state/1/bossbar
# 游戏状态
execute if score $state data matches 3 run function game:state/3/bossbar
# 逃离状态
execute if score $state data matches 4 run function game:state/4/bossbar