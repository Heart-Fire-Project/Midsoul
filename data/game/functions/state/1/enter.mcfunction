# 状态 1 - 初始
scoreboard players set $state data 1
execute as @a[team=prepare,limit=5,sort=random] run function game:state/1/prepare_enter
execute as @a[team=unready] run function game:state/1/unready_enter
execute as @a[team=prepare,tag=!game_player] run function game:state/1/maxed_out

# Bossbar 设置
bossbar set midsoul:game players @a[team=unready]

# 清除已有id
scoreboard players reset $player_id temp
scoreboard players set @a player_id 0

# 设置标题
title @a times 3 14 2

# 准备下一步
function game:state/1/playerid_set

# 确认设置
execute store result score $shard_goal temp run scoreboard players get $shard_goal data

# 去除掉tag
tag @a remove game_player