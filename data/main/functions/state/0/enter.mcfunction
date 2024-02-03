# 状态 0 - 大厅
scoreboard players set $state data 0
execute as @a[team=!admin] run function main:state/0/player_enter

# Bossbar
bossbar set midsoul:info players @a
bossbar set midsoul:info style notched_10

# 刷新
function main:state/0/refresh/entity
function main:state/0/refresh/sign

# 变量组
execute if score $gamemode data matches 1 run data merge storage ms:mode {player_start:"5",player_cancel:"4"}
execute if score $gamemode data matches 2 run data merge storage ms:mode {player_start:"2",player_cancel:"1"}

# 计分板
scoreboard objectives setdisplay list stat_level
scoreboard objectives setdisplay below_name stat_level
scoreboard players set $0_start countdown 7777777