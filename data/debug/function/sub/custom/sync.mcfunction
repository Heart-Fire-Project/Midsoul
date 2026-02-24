# 同步信息到 ms:temp
$data modify storage ms:temp name set from storage ms:custom_$(num) name
$data modify storage ms:temp size set from storage ms:custom_$(num) size
$data modify storage ms:temp size_plus set from storage ms:custom_$(num) size_plus
$data modify storage ms:temp complex set from storage ms:custom_$(num) complex
$data modify storage ms:temp complex_plus set from storage ms:custom_$(num) complex_plus
$data modify storage ms:temp shard_goal set from storage ms:custom_$(num) shard_goal
$data modify storage ms:temp shard_summon set from storage ms:custom_$(num) shard_summon
$data modify storage ms:temp chest_summon set from storage ms:custom_$(num) chest_summon
$data modify storage ms:temp chest_max set from storage ms:custom_$(num) chest_max
$data modify storage ms:temp forceload1 set from storage ms:custom_$(num) forceload1
$data modify storage ms:temp forceload2 set from storage ms:custom_$(num) forceload2
$data modify storage ms:temp forceload3 set from storage ms:custom_$(num) forceload3
$data modify storage ms:temp center set from storage ms:custom_$(num) center