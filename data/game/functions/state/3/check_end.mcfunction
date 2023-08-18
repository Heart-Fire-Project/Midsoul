# 若游戏人数已不够
execute unless entity @a[team=alive,scores={state=0}] run function game:state/5/enter 
execute unless entity @a[team=protect] run function game:state/5/enter
# 若碎片搜集已达标
execute if score $shard_collected temp = $shard_goal temp run function game:state/4/enter
# 若已经死的差不多
scoreboard players reset $alive temp
execute as @a[team=alive] run scoreboard players add $alive temp 1
execute if score $alive temp matches 1 run tellraw @a[team=!admin] [{"text": " » ","color": "#BC78EC","bold": true},{"translate":"ms.info.open","fallback": "灵力集中于一人身上, 传送门即刻开启!","bold": false}]
execute if score $alive temp matches 1 run function game:state/4/enter