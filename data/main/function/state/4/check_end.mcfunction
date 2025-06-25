# 若守卫者不在
execute if entity @a[team=guardian] if score $3_noguar tick.global matches ..599 run title @a[team=!admin] actionbar ""
execute if entity @a[team=guardian] run scoreboard players set $3_noguar tick.global 600
execute unless entity @a[team=guardian] run function main:state/3/event/no_guardian

# 若仅剩一未垂死灵魂 | 优先度小于守卫者掉线提示
execute if score $undying data matches 1 unless score $alive data matches 1 if entity @a[team=guardian] run function main:state/3/event/last_undying

# 若灵魂已死光
execute unless entity @a[team=soul,scores={state=0}] run function main:state/5/enter

# 若只剩一位存活或仅剩 20 秒，开启终局
execute if score $alive data matches 1 if score $4_finale state matches 0 run function main:state/4/finale
execute if score $4_portal tick.global matches ..400 if score $4_finale state matches 0 run function main:state/4/finale

# 若时间已到
execute if score $4_portal tick.global matches ..0 run function main:state/5/enter