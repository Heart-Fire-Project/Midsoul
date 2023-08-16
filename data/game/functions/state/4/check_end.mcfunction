# 若游戏人数已不够
execute unless entity @a[team=alive,scores={state=0}] run function game:state/5/enter 
execute unless entity @a[team=protect] run function game:state/5/enter
# 若时间截止
execute if score $portal countdown matches ..0 run function game:state/5/enter