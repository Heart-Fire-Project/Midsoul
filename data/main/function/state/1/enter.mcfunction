# 状态 1 - 初始
scoreboard players set $state data 1
stopsound @a music
kill @e[tag=lobby_entity]
tag @a remove game_player
tag @a remove join_check
tag @a remove ability_check

# 强制结算经验
execute as @a run scoreboard players operation @s stat.exp += @s exp.temp
execute as @a run scoreboard players reset @s exp.temp

# 入场
execute as @a[team=prepare,limit=10,sort=random] run function main:state/1/player_enter/prepare
execute as @a[tag=!game_player,team=!admin] run function main:state/1/player_enter/spectator

# 仅在未超限时提供管理员入场
scoreboard players set $player temp 0
execute as @a[tag=game_player] run scoreboard players add $player temp 1
execute if score $player temp matches ..9 as @a[team=admin] run function main:state/1/player_enter/admin

# 计算该部分时间
# 正常 14s [3+3+5+3] | 管理员决策 6s | 选择能力 20s < 每多选择一项额外加 10s
scoreboard players set $1_tick tick.global 280
execute as @p[team=admin] run scoreboard players add $1_tick tick.global 120
execute if score $ability_apply setting matches 1..2 run scoreboard players add $1_tick tick.global 400
execute if score $ability_apply setting matches 3..4 run scoreboard players add $1_tick tick.global 600
execute if score $ability_apply setting matches 5 run scoreboard players add $1_tick tick.global 800

# 计分板
scoreboard objectives setdisplay list
scoreboard objectives setdisplay below_name
scoreboard players reset $player_id temp
scoreboard players set @a player_id 0
scoreboard players set $1_process tick.global 1200
scoreboard players reset * skill
scoreboard players reset * talent_1
scoreboard players reset * talent_2

# 旁观用 Bossbar
bossbar set midsoul:info players @a[team=spectator]
bossbar set midsoul:info color white
bossbar set midsoul:info style progress 
execute store result bossbar midsoul:info max run scoreboard players get $1_tick tick.global