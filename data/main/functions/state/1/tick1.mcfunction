# 拘束参加者
tp @a[team=soul] 0 231 0
tp @a[team=protect] 0 231 0
tp @a[team=prepare] 0 231 0
tp @a[team=spectator] 0 1000 0

# 执行与检测
execute as @a run function main:state/1/admin_check
function main:state/1/time_ticking
function main:state/1/bossbar

# 扣时间
execute if score $1_ticking countdown matches 1.. run scoreboard players remove $1_ticking countdown 1
execute unless entity @a[team=admin,tag=!play_check] if score $1_ticking countdown matches 260.. run scoreboard players set $1_ticking countdown 260