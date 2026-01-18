# 确认是否是可生成点位
execute as @e[tag=marker_gold] at @s if entity @e[distance=..0.1,tag=gold] run tag @s add summon_no
execute as @e[tag=marker_gold] at @s unless entity @a[tag=game_player,distance=..1000] run tag @s add summon_no

# 不能离守卫者太近：原则上守卫者周边 35 格内不生成灵魂之灯
execute at @a[team=guardian] run tag @e[distance=..35,tag=marker_gold] add summon_bad

# 应该离灵魂近点，但也不能太近：尽量选择 50~80 格内的点位
execute at @a[team=soul,scores={state=0}] run tag @e[distance=50..80,tag=marker_gold] add summon_good

# 选择优先点位，若无效则扩大范围
tag @e[tag=summon_good,tag=!summon_bad,tag=!summon_no,limit=1,sort=random] add summon_select
execute unless entity @e[tag=summon_select] run tag @e[tag=marker_gold,tag=!summon_bad,tag=!summon_no,limit=1,sort=random] add summon_select
execute unless entity @e[tag=summon_select] run tag @e[tag=marker_gold,tag=!summon_no,limit=1,sort=random] add summon_select

# 至少得到一个点位，进行生成
execute at @e[tag=summon_select] run summon block_display ~ ~ ~ {Tags:[game_entity,new_gold,gold],Glowing:1b,block_state:{Name:soul_lantern},transformation:{scale:[1.4f,1.4f,1.4f],translation:[-0.7f,0f,-0.7f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute at @e[tag=new_gold] run particle wax_on ~ ~0.5 ~ 0.25 0.3 0.25 5 32 force @a
team join light @e[tag=new_gold]
tag @e remove new_gold

# 剩下的标签全部去掉
tag @e remove summon_no
tag @e remove summon_bad
tag @e remove summon_good
tag @e remove summon_select

# 教程
advancement grant @a[tag=game_player] only main:tutorial/interact/2