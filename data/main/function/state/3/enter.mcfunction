# 阶段 3 - 收集
scoreboard players set $state data 3
function main:lib/event/universal/starting

# 重设计分板
scoreboard players set $shard_collect data 0
scoreboard players set $soul_death data 0
scoreboard players set $soul_revive data 0
scoreboard players set $3_process tick.general 0

# 生成碎片
$function main:lib/event/summon/blue {num:"$(shard_summon)"}
execute if score $echo data matches 2 store result storage ms:temp num int 1 run data get storage ms:map shard_summon 0.3
execute if score $echo data matches 2 run function main:lib/echo/02 with storage ms:temp

# 生成初始宝盒
$function main:lib/event/summon/gray {num:"$(chest_summon)"}

# 标题
title @a title ""
title @a subtitle [{text:"» ",color:"#7367F0",bold:true},{translate:"ms.title.3.start",fallback:"游戏开始",bold:false},{text:" «",bold:true}]
playsound block.end_portal.spawn player @a 0 1000000 0 120000 1

# Bossbar
bossbar set midsoul:info color blue
bossbar set midsoul:info style progress
bossbar set midsoul:heed style progress
bossbar set midsoul:warn style progress
$bossbar set midsoul:info max $(shard_goal)
$bossbar set midsoul:heed max $(shard_goal)
$bossbar set midsoul:warn max $(shard_goal)

# 刷新初始状态
execute as @a[tag=game_player] run function main:state/3/player/effect

# 背景音乐
execute as @a run function main:lib/event/music_roll

# 占位符，以免误调设定
item replace entity @a[tag=game_player] inventory.11 from block 0 -7 0 container.11
item replace entity @a[tag=game_player] inventory.12 from block 0 -7 0 container.12
item replace entity @a[tag=game_player] inventory.13 from block 0 -7 0 container.13
item replace entity @a[tag=game_player] inventory.14 from block 0 -7 0 container.14
item replace entity @a[tag=game_player] inventory.15 from block 0 -7 0 container.15

# 去逃避
execute if score $mode data matches 2 run function main:state/4/enter