# 若守卫者不在 | 标题栏优先度小于读条
execute if entity @a[team=guardian] if score $noguar tick.general matches ..599 run title @a actionbar ""
execute if entity @a[team=guardian] run scoreboard players set $noguar tick.general 600
execute unless entity @a[team=guardian] run function main:lib/event/no_guardian

# 若仅剩一未垂死灵魂 | 标题栏优先度小于守卫者掉线提示
execute if score $undying data matches 1 unless score $alive data matches 1 if entity @a[team=guardian] run function main:lib/event/last_undying

# 若灵魂已死光
execute unless entity @a[team=soul,scores={state=0}] as @a[team=guardian,scores={setting.instant_rating=1}] run function main:lib/rating/1/guardian/offense
execute unless entity @a[team=soul,scores={state=0}] run scoreboard players set $guardian_offense data 240
execute unless entity @a[team=soul,scores={state=0}] run function main:state/99/enter

# 若收集目标达成
execute store result score $goal temp run data get storage ms:map shard_goal
execute if score $3_process tick.general matches ..17999 if score $shard_collect data >= $goal temp run function main:state/4/enter

# 若仅剩一位灵魂，10 秒后进灵气 4
execute if score $alive data matches 1 if score $3_process tick.general matches 5..17599 run scoreboard players set $3_process tick.general 17799

# 若已经不能再拖
execute if score $3_process tick.general matches 19200.. run function main:state/4/enter