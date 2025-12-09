# 阶段 4 - 充能
scoreboard players set $state data 4

# 确定游戏范围
execute as @e[tag=marker_purple] at @s unless entity @a[tag=game_player,distance=..1000] run tag @s add summon_no

# 生成第一传送门
execute at @e[tag=!summon_no,tag=marker_purple,limit=1,sort=random] run summon block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple],Glowing:1b,block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}

# 生成第二传送门 | 优先间隔 60~80 格，无符合点位则 50~90 格，再无则无限制
execute at @n[tag=new_purple] run tag @e[tag=marker_purple,limit=1,sort=random,distance=60..80] add summon_select
execute unless entity @e[tag=summon_select] at @n[tag=new_purple] run tag @e[tag=marker_purple,limit=1,sort=random,distance=50..90] add summon_select
execute unless entity @e[tag=summon_select] at @n[tag=new_purple] run tag @e[tag=marker_purple,limit=1,sort=random,distance=0.01..,tag=!summon_no] add summon_select
execute at @e[tag=summon_select] run summon block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple],Glowing:1b,block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}

# 善后工作
execute as @e[tag=new_purple] run team join portal @s
scoreboard players set @e[tag=new_purple] tick.general 0
execute at @e[tag=new_purple] run summon text_display ~ ~1.2 ~ {Tags:[game_entity,purple_progress],interpolation_duration:0,billboard:"center",alignment:"center",background:-2134114303,line_width:200,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[tag=purple_progress] tick.general 0
scoreboard players set @e[tag=purple_progress] state 0
tag @e[tag=new_purple] remove new_purple
tag @e remove summon_select

# 播报传送门生成
title @a title ""
title @a subtitle {translate:"ms.title.4.portal",fallback:"⚜ 传送门已出现 ⚜",color:"#7367F0"}
playsound entity.warden.attack_impact player @a 0 1000000 0 120000 0.7

# 生成第三传送门？
execute if score $two_guardian state matches 1 run playsound entity.villager.work_toolsmith player @a 0 1000000 0 120000
execute if score $two_guardian state matches 1 run tellraw @a ["\n",{text:"🔧 ",color:"#9896F1"},{translate:"ms.info.two_guardian",fallback:"双守卫特殊机制",color:"#9896F1"},"\n",{translate:"ms.info.two_guardian.desc.3",fallback:"本局游戏中额外生成一个隐藏传送门"}]
execute if score $two_guardian state matches 1 run function main:state/4/purple_3rd

# 设置计时
scoreboard players set $4_finale state 0
scoreboard players set $4_timeout state 0
scoreboard players set $4_process tick.general 0
execute store result score $4_portal tick.general run data get storage ms:map original_goal
scoreboard players operation $4_portal tick.general *= #100 data
scoreboard players add $4_portal tick.general 1600

# 初始化 Bossbar
bossbar set midsoul:info style notched_12
bossbar set midsoul:heed style notched_12
bossbar set midsoul:warn style notched_12
execute store result bossbar midsoul:info max run scoreboard players get $4_portal tick.general
execute store result bossbar midsoul:heed max run scoreboard players get $4_portal tick.general
execute store result bossbar midsoul:warn max run scoreboard players get $4_portal tick.general

# 设置速度
execute as @a[team=guardian] run attribute @s movement_speed base set 0.14
execute if score $echo data matches 6 as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.175
execute if score $echo data matches 6 as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.21

# 回响效果
execute if score $echo data matches 8 run scoreboard players set @e[tag=purple] tick.general 999999999

# 教程
advancement grant @a[tag=game_player] only main:tutorial/interact/4
advancement grant @a[team=guardian] only main:tutorial/player/4