# 若游戏人数已不够
execute unless entity @a[team=soul,scores={state=0}] run function main:state/5/enter 
execute unless entity @a[team=protect] run function main:state/5/enter

# 若碎片收集已达标
$execute if score $shard_collect temp matches $(shard_goal).. run function main:state/4/enter with storage ms:map

# 若已经死的差不多
scoreboard players reset $alive temp
execute as @a[team=soul] run scoreboard players add $alive temp 1
execute if score $alive temp matches ..1 if score $play_time temp matches ..23800 run scoreboard players set $play_time temp 23800

# 若是时间已耗尽
execute if score $play_time temp matches 25200.. run function main:state/4/enter with storage ms:map