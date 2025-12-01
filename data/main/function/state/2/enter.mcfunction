# 阶段 2 - 入场
scoreboard players set $state data 2

# 地图初始化
function main:state/2/map_init

# Bossbar
bossbar set midsoul:info style notched_12
bossbar set midsoul:info max 120
bossbar set midsoul:2 style notched_12
bossbar set midsoul:2 max 120
bossbar set midsoul:3 style notched_12
bossbar set midsoul:3 max 120

# 重置所有人属性
execute as @a[team=!admin] run attribute @s movement_speed base set 0.1
execute as @a[team=!admin] run attribute @s scale base set 1.0
execute as @a[team=!admin] run attribute @s gravity base set 0.08
execute as @a[team=!admin] run attribute @s jump_strength base set 0.42

# 计分板
scoreboard players set $2_starting tick.general 120

# 设置标题
title @a times 3 54 2
title @a title ""
title @a subtitle [{text:"» ",color:"#50A7D9",bold:true},{translate:"ms.title.2.starting",fallback:"游戏即将开始",bold:false},{text:" «",bold:true}]

# 玩家入场
function main:state/2/player_enter/general