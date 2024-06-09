# 状态 1 - 初始
scoreboard players set $state data 1
tag @a remove game_player
tag @a remove play_check

# 入场
execute as @a[team=prepare] run function main:state/1/player_enter/prepare
execute as @a[team=spectator] run function main:state/1/player_enter/spectator
execute as @a[team=admin] run function main:state/1/player_enter/admin

# Bossbar
bossbar set midsoul:info players @a[team=spectator]
bossbar set midsoul:info color white
bossbar set midsoul:info style progress 
bossbar set midsoul:info max 260
execute if entity @a[team=admin] run bossbar set midsoul:info max 400

# 设置标题
title @a times 3 20 2

# 回响判断 - 后续实装
scoreboard players set $echo data 0
# function base:random {storage:"data",max:"100",min:"1"}
# execute if score $random data <= $echo_chance data run function main:state/1/echo/random

# 计分板
scoreboard players set $1_ticking countdown 260
execute if entity @a[team=admin] run scoreboard players set $1_ticking countdown 400
kill @e[tag=lobby_entity]
scoreboard objectives setdisplay list
scoreboard objectives setdisplay below_name
scoreboard players reset $player_id temp
scoreboard players set @a player_id 0

clear @a[team=!admin]