# 阶段 0 - 大厅
scoreboard players set $state data 0
execute as @a[team=!admin] run function main:state/0/player_enter
forceload add -16 -16 16 16

# Bossbar
bossbar set midsoul:info style notched_10
bossbar set midsoul:info players @a
bossbar set midsoul:1 players
bossbar set midsoul:2 players
bossbar set midsoul:3 players
bossbar set midsoul:heed players
bossbar set midsoul:warn players

# 刷新
function main:state/0/refresh/block
function main:state/0/refresh/sign
function main:state/0/refresh/entity
function main:state/0/refresh/index
execute at @a if entity @e[tag=extra_entity,distance=..30] run function main:state/0/refresh/extra

# 设置变量组
execute if score $mode setting matches 1 run data merge storage ms:mode {start:"5",cancel:"4",logic:"1",role:"1",affact_rating:true,affact_exp:true,affact_data:true}
execute if score $mode setting matches 2 run data merge storage ms:mode {start:"2",cancel:"1",logic:"1",role:"1",affact_rating:false,affact_exp:false,affact_data:false}

# 重设速率
execute if data storage ms:setting {reset_speed:true} run function debug:sub/game/restore_speed

# 守卫者重连附属
team empty guardian

# 计分板
scoreboard objectives setdisplay list stat.level
scoreboard objectives setdisplay below_name stat.level
scoreboard objectives setdisplay sidebar
scoreboard players set $0_start tick.general 1010000