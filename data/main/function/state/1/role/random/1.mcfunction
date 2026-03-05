# 灵能反噬 | 好了我做权重系统还不行吗
# 基础权重是 7，每连续成为一次灵魂则权重 +1

# 确定性自选 | 玩家计数，判定是否直接全属灵魂
scoreboard players set $player temp 0
execute as @a[tag=game_player] run scoreboard players add $player temp 1
scoreboard players set $guardian temp 1
execute if score $player temp matches 7.. run scoreboard players add $guardian temp 1
execute as @a[team=guardian] run scoreboard players remove $guardian temp 1
execute if score $guardian temp matches ..0 run team join soul @a[team=prepare]

# 第一次 | 遍历
scoreboard players reset * temp2
execute as @a[team=prepare] run function main:state/1/role/random/1r

# 第一次 | 选定
function main:state/1/role/random/1a
team join guardian @r[tag=guardian_target]
execute unless entity @a[tag=guardian_target] run team join guardian @r[team=prepare]
tag @a remove guardian_target

# 确定性自选 | 再次判定是否全属灵魂
execute if score $guardian temp matches ..1 run team join soul @a[team=prepare]

# 清除数据
scoreboard players reset * temp
scoreboard players reset * temp2
scoreboard players set $total temp2 0
scoreboard players set $player temp 0
execute as @a[tag=game_player] run scoreboard players add $player temp 1

# 第二次 | 遍历
execute if score $player temp matches 7.. as @a[team=prepare] run function main:state/1/role/random/1r

# 第二次 | 选定
execute if score $player temp matches 7.. run function main:state/1/role/random/1a
execute if score $player temp matches 7.. run team join guardian @r[tag=guardian_target]
execute if score $player temp matches 7.. unless entity @a[tag=guardian_target] run team join guardian @r[team=prepare]
tag @a remove guardian_target

# 剩下的人全是灵魂
team join soul @a[team=prepare]

# 只在完全随机分配时计算层数
execute if score $role_assign data matches 1 run scoreboard players set @a[team=guardian] soul_combo 0
execute if score $role_assign data matches 1 run scoreboard players add @a[team=soul] soul_combo 1