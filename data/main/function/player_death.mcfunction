# 大厅阶段就送回去
execute if score $state data matches 0 run function main:state/0/player_enter

# 游戏阶段则转回去
execute if score $state data matches 3..4 as @s[team=soul] run function main:state/3/player/soul/dying
execute if score $state data matches 3..4 as @s[team=guardian] run function main:state/3/player/guardian/out