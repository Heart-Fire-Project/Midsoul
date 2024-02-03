scoreboard players set $prepare data 0
execute as @e[team=prepare] run scoreboard players add $prepare data 1

# 等待转准备
$execute if score $prepare data matches $(player_start).. if score $0_start countdown matches 11.. as @a run playsound minecraft:entity.player.levelup player @s 0 1000000 0 1000000
$execute if score $prepare data matches $(player_start).. if score $0_start countdown matches 11.. run scoreboard players set $0_start countdown 10
$execute if score $prepare data matches $(player_start).. if score $0_start countdown matches 10.. run function main:state/0/bossbar with storage ms:mode

# 准备转等待
$execute if score $prepare data matches ..$(player_cancel) if score $0_start countdown matches ..10 as @a run playsound minecraft:block.note_block.didgeridoo player @s 0 1000000 0 1000000
$execute if score $prepare data matches ..$(player_cancel) if score $0_start countdown matches ..10 run function main:state/0/bossbar with storage ms:mode
$execute if score $prepare data matches ..$(player_cancel) if score $0_start countdown matches ..10 run scoreboard players set $0_start countdown 7777777