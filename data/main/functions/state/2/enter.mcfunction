# 状态 2 - 入场
scoreboard players set $state data 2
function main:state/2/map_load

# Bossbar
bossbar set midsoul:info players @a[team=!admin]
bossbar set midsoul:info color blue
bossbar set midsoul:info style notched_6
bossbar set midsoul:info max 6

# 设置标题
title @a times 3 54 2
title @a title ""
title @a[team=!admin] subtitle {"translate":"ms.title.ready","fallback":"▣ 游戏即将开始 ▣","color":"aqua"}

schedule function main:state/2/player_enter/general 2t replace