# 阶段 1 - 初始
scoreboard players set $state data 1
stopsound @a record
tp @e[type=mannequin,tag=lobby_entity] 0 -100 0
kill @e[tag=lobby_entity]
tag @a remove game_player
tag @a remove join_check
tag @a remove ability_check

# 强制结算经验
execute as @a run scoreboard players operation @s stat.exp += @s exp.temp
execute as @a run scoreboard players set @s exp.temp 0

# 入场
execute as @a[team=prepare,limit=10,sort=random] run function main:state/1/player_enter/prepare
execute as @a[tag=!game_player,team=!admin] run function main:state/1/player_enter/spectator

# 仅在未超限时提供管理员入场
scoreboard players set $player temp 0
execute as @a[tag=game_player] run scoreboard players add $player temp 1
execute if score $player temp matches ..9 as @a[team=admin] run function main:state/1/player_enter/admin
execute if score $player temp matches 10.. run tellraw @a[team=admin] ["",{text:"» ",color:"#33FF33",bold:true},{translate:"ms.info.1.admin_skip",fallback:"玩家数已达上限，跳过管理员加入阶段",color:"#33FF33"}]

# 计算该部分时间
# 正常 15s [3+3+5+3] | 管理员选择 6s | 阵营选择 11s | 能力选择 20/30/40s << 初始 20s，每多选择一项 +10s
scoreboard players set $1_tick tick.general 300
execute if entity @a[team=admin] if score $player temp matches ..9 run scoreboard players add $1_tick tick.general 120
execute if score $role_assign setting matches 2.. run scoreboard players add $1_tick tick.general 220
execute if score $ability_assign setting matches 1..2 run scoreboard players add $1_tick tick.general 400
execute if score $ability_assign setting matches 3..4 run scoreboard players add $1_tick tick.general 600
execute if score $ability_assign setting matches 5 run scoreboard players add $1_tick tick.general 800

# 计分板
scoreboard objectives setdisplay list
scoreboard objectives setdisplay below_name
scoreboard players reset $entity_id temp
scoreboard players set @a entity_id 0
scoreboard players set $1_process tick.general 1440
scoreboard players reset * skill
scoreboard players reset * talent_1
scoreboard players reset * talent_2

# Bossbar
bossbar set midsoul:1 players
bossbar set midsoul:2 players
bossbar set midsoul:3 players
bossbar set midsoul:heed players
bossbar set midsoul:warn players
bossbar set midsoul:info players @a[team=spectator]
bossbar set midsoul:info color white
bossbar set midsoul:info style progress
execute store result bossbar midsoul:info max run scoreboard players get $1_tick tick.general