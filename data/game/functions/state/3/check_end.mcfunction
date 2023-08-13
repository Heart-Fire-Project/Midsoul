# 若游戏人数已不够
execute unless entity @a[team=alive] run function game:state/5/enter 
execute unless entity @a[team=protect] run function game:state/5/enter
# 若碎片搜集已达标
execute if score $shard_collected temp = $shard_goal temp run function game:state/4/enter