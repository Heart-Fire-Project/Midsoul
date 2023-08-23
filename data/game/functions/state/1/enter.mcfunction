# 状态 1 - 初始
scoreboard players set $state data 1

# 版本检查
tellraw @a[team=!admin] [{"text": " » ","bold": true},{"translate":"ms.info.mpver","fallback": "当前地图版本","bold": false}," ",{"text": "Early Access 1.0","bold": false}]
tellraw @a[team=!admin] [{"text": " » ","bold": true},{"translate":"ms.info.rpver","fallback": "你没有安装多语言包","bold": false}," ",{"translate":"ms.ver","fallback": "","bold": false}]

# 入场
execute as @a[team=prepare] run function game:state/1/prepare_enter
execute as @a[team=unready] run function game:state/1/unready_enter

# Bossbar 设置
bossbar set midsoul:info players @a[team=unready]

# 清除已有id
scoreboard players reset $player_id temp
scoreboard players set @a player_id 0

# 设置标题
title @a times 3 14 2

# 准备下一步
function game:state/1/playerid_set


tag @a remove game_player
clear @a[team=!admin]