# 若守卫者不在
execute if entity @a[team=guardian] if score $3_noguar countdown matches ..599 run title @a[team=!admin] actionbar ""
execute if entity @a[team=guardian] run scoreboard players set $3_noguar countdown 600
execute unless entity @a[team=guardian] run function main:state/3/event/no_guardian

# 若灵魂已死光
execute unless entity @a[team=soul,scores={state=0}] run function main:state/5/enter

# 若仅剩一位可行动，应用自回
execute if score $undying data matches 1 if score $4_single state matches 0 run function main:state/4/aura/single

# 若只剩一位存活或仅剩 20 秒，开启冲刺
execute if score $alive data matches 1 if score $4_finale state matches 0 run function main:state/4/aura/finale
execute if score $4_portal countdown matches ..400 if score $4_finale state matches 0 run function main:state/4/aura/finale

# 若时间已到
execute if score $4_portal countdown matches ..0 run function main:state/5/enter