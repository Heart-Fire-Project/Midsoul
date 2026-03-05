# 同步信息到 ms:map
data modify storage ms:map name set from storage ms:temp name
data modify storage ms:map size set from storage ms:temp size
data modify storage ms:map complex set from storage ms:temp complex
data modify storage ms:map shard_goal set from storage ms:temp shard_goal
data modify storage ms:map original_goal set from storage ms:temp original_goal
data modify storage ms:map shard_summon set from storage ms:temp shard_summon
data modify storage ms:map original_summon set from storage ms:temp original_summon
data modify storage ms:map chest_summon set from storage ms:temp chest_summon
data modify storage ms:map chest_max set from storage ms:temp chest_max
data modify storage ms:map forceload1 set from storage ms:temp forceload1
data modify storage ms:map forceload2 set from storage ms:temp forceload2
data modify storage ms:map forceload3 set from storage ms:temp forceload3
data modify storage ms:map center set from storage ms:temp center