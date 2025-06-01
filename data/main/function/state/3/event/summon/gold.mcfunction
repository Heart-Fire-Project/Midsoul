# 生成灵魂之灯
# 点位不能重合
execute as @e[tag=marker_gold] at @s unless entity @e[distance=..3,tag=gold] run tag @s add gold_empty

# 不能离守卫者太近：守卫者周边 35 格内不会生成灵魂之灯
execute at @a[team=guardian] run tag @e[distance=..35,tag=marker_gold] add no_summon

# 应该离灵魂近点，但也不能太近：尽量选择 50~80 格内的点位
execute at @a[team=soul,scores={state=0}] run tag @e[distance=50..80,tag=marker_gold] add good_summon

# 选择优先点位，若无效则扩大范围
tag @e[tag=good_summon,tag=gold_empty,tag=!no_summon,limit=1,sort=random] add gold_select
execute unless entity @e[tag=gold_select] run tag @e[tag=gold_empty,tag=!no_summon,limit=1,sort=random] add gold_select
execute unless entity @e[tag=gold_select] run tag @e[tag=gold_empty,limit=1,sort=random] add gold_select

# 至少得到一个点位，进行生成
execute at @e[tag=gold_select] run summon block_display ~ ~ ~ {Tags:[game_entity,new_gold,gold],Glowing:1b,block_state:{Name:soul_lantern},transformation:{scale:[2f,2f,2f],translation:[-1f,0f,-1f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute at @e[tag=new_gold] run particle wax_on ~ ~0.5 ~ 0.25 0.3 0.25 5 32 force @a
execute as @e[tag=new_gold] run team join light @s
execute as @e[tag=new_gold] run tag @s remove new_gold

# 剩下的标签全部去掉
tag @e remove gold_empty
tag @e remove no_summon
tag @e remove good_summon
tag @e remove gold_select

# 教程
advancement grant @a[tag=game_player] only main:tutorial/interact/2