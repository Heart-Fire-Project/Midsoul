# 若游戏人数已不够
execute unless entity @a[team=soul,scores={state=0}] run function main:state/5/enter 
execute unless entity @a[team=protect] run function main:state/5/enter

# 若时间已耗尽
execute if score $portal temp matches 2 if score $4_portal countdown matches ..0 run function main:state/5/enter