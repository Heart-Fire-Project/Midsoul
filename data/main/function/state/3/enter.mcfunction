# 状态 3 - 收集
scoreboard players set $state data 3

# 重设计分板
scoreboard players set $shard_collect data 0
scoreboard players set $aura_rank data 0
scoreboard players set $soul_death data 0
scoreboard players set $soul_revive data 0
scoreboard players set $stat_gametime tick.global 0
scoreboard players set $3_process tick.global 0
scoreboard players set $3_echo tick.global -1
scoreboard players set @a state 0
scoreboard players set @a item 0
scoreboard players reset @a tick.enhance
scoreboard players reset @a tick.global
scoreboard players reset @a detect.sneak
scoreboard players reset @a detect.sleep
scoreboard players reset @a detect.drop
scoreboard players reset @a tick.off_ground

# 游戏用新计分板
scoreboard objectives remove talent.004
scoreboard objectives add talent.004 dummy "魂魄汲取 - 剩余量"
scoreboard players set @a[team=soul,scores={talent_1=4}] talent.004 2
scoreboard players set @a[team=soul,scores={talent_2=4}] talent.004 2
scoreboard objectives remove talent.004s
scoreboard objectives add talent.004s dummy "魂魄汲取 - 需求量"
scoreboard players set @a[team=soul,scores={talent_1=4}] talent.004s 2
scoreboard players set @a[team=soul,scores={talent_2=4}] talent.004s 2
scoreboard players set $talent_007 data 5
scoreboard objectives remove talent.107
scoreboard objectives add talent.107 dummy "碎片侵蚀 - 污染数"
scoreboard players set @a[team=guardian,scores={talent_1=7}] talent.107 0
scoreboard players set @a[team=guardian,scores={talent_2=7}] talent.107 0
scoreboard objectives remove skill.004
scoreboard objectives add skill.004 dummy "铤而走险 - 负面几率"
scoreboard players set @a[team=soul,scores={skill=4}] skill.004 5
scoreboard objectives remove skill.102
scoreboard objectives add skill.102 dummy "灵力掌控 - 生效目标"
scoreboard players set @a[team=guardian,scores={skill=2}] skill.102 0
scoreboard objectives remove skill.103
scoreboard objectives add skill.103 dummy "唤灵留迹 - 生效计时"

# 生成碎片
$execute at @e[tag=marker_blue,sort=random,limit=$(shard_summon)] run summon item ~ ~0.2 ~ {Tags:[game_entity,new_blue,blue],Item:{id:"echo_shard",count:1},PickupDelay:32767s,Age:-32768s,NoGravity:1b,Invulnerable:1b}
execute at @e[tag=new_blue] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
execute as @e[tag=new_blue] run team join shard @s
execute as @e[tag=new_blue] run tag @s remove new_blue
execute if score $echo data matches 2 store result storage ms:temp num short 1 run data get storage ms:map shard_summon 0.3
execute if score $echo data matches 2 run function main:state/3/echo/02 with storage ms:temp

# 生成初始宝盒
$execute at @e[tag=marker_gray,sort=random,limit=$(chest_summon)] run summon block_display ~ ~ ~ {Tags:[game_entity,new_gray,gray],block_state:{Name:light_gray_shulker_box},transformation:{scale:[0.5f,0.5f,0.5f],translation:[-0.25f,0f,-0.25f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute at @e[tag=new_gray] run particle dust{color:[1,1,1],scale:1} ~ ~0.2 ~ 0.2 0.1 0.2 0 7 force @a
execute as @e[tag=new_gray] run team join chest @s
execute as @e[tag=new_gray] run tag @s remove new_gray
scoreboard players set $3_chest tick.global 180
execute if score $echo data matches 4 run scoreboard players set $3_chest tick.global 60

# 标题
title @a[team=!admin] title ""
title @a[team=!admin] subtitle [{"text":"» ","color":"#7367F0","bold":true},{"translate":"ms.title.3.start","fallback":"游戏开始","bold":false},{"text":" «","bold":true}]
playsound block.end_portal.spawn player @a[team=!admin] 0 1000000 0 1000000 1

# Bossbar
bossbar set midsoul:info color blue
bossbar set midsoul:info style progress
bossbar set midsoul:heed style progress
bossbar set midsoul:warn style progress
$bossbar set midsoul:info max $(shard_goal)
$bossbar set midsoul:heed max $(shard_goal)
$bossbar set midsoul:warn max $(shard_goal)

# 初始冷却 | 以 0.1 刻为单位
# 单次冷却 |  40  |  45  |  50  |  55  |  60  |  65  |  70  |  75  |  80  |  85  |  90
# 实际写入 |  08  |  09  |  10  |  11  |  12  |  13  |  14  |  15  |  16  |  17  |  18  
scoreboard players reset * tick.skill
scoreboard players reset * tick.talent_1
scoreboard players reset * tick.talent_2
scoreboard players set @a[team=soul,scores={skill=1}] tick.skill 12000
scoreboard players set @a[team=soul,scores={skill=2}] tick.skill 15000
scoreboard players set @a[team=soul,scores={skill=3}] tick.skill 14000
scoreboard players set @a[team=soul,scores={skill=4}] tick.skill 12000
scoreboard players set @a[team=soul,scores={skill=5}] tick.skill 09000
scoreboard players set @a[team=guardian,scores={skill=1}] tick.skill 14000
scoreboard players set @a[team=guardian,scores={skill=2}] tick.skill 13000
scoreboard players set @a[team=guardian,scores={skill=3}] tick.skill 12000
scoreboard players set @a[team=guardian,scores={skill=4}] tick.skill 12000
scoreboard players set @a[team=guardian,scores={skill=5}] tick.skill 15000
scoreboard players set @a[team=soul,scores={talent_1=2}] tick.talent_1 12000
scoreboard players set @a[team=soul,scores={talent_1=4}] tick.talent_1 00600
scoreboard players set @a[team=guardian,scores={talent_1=4}] tick.talent_1 18000
scoreboard players set @a[team=guardian,scores={talent_1=5}] tick.talent_1 12000
scoreboard players set @a[team=guardian,scores={talent_1=7}] tick.talent_1 08000
scoreboard players set @a[team=soul,scores={talent_2=2}] tick.talent_2 12000
scoreboard players set @a[team=soul,scores={talent_2=4}] tick.talent_2 00600
scoreboard players set @a[team=guardian,scores={talent_2=4}] tick.talent_2 18000
scoreboard players set @a[team=guardian,scores={talent_2=5}] tick.talent_2 12000
scoreboard players set @a[team=guardian,scores={talent_2=7}] tick.talent_2 08000

# 初始化标签
tag @a[team=soul] add no_hit
tag @a remove echo_target
tag @a remove skill_on
tag @a remove talent_1_on
tag @a remove talent_2_on
tag @a remove item_on
tag @a remove hit_soul
tag @a remove T004
tag @a remove S004_a
tag @a remove S004_b
tag @e remove E05

# 清空临时数据
scoreboard players reset * temp.collect
scoreboard players reset * temp.down
scoreboard players reset * temp.dying
scoreboard players reset * temp.heal
scoreboard players reset * temp.hit
scoreboard players reset * temp.item
scoreboard players reset * temp.open
scoreboard players reset * temp.skill
scoreboard players reset * temp.talent
scoreboard players reset * temp.tie
scoreboard players reset * temp.time
scoreboard players reset * temp.track

# 刷新初始状态
execute as @a[tag=game_player] run function main:state/3/player/effect

# 回响效果
execute if score $echo data matches 1 run function main:state/3/echo/init {min:"45",max:"80"}
execute if score $echo data matches 5 run function main:state/3/echo/init {min:"20",max:"60"}
execute if score $echo data matches 8 run function main:state/3/echo/init {min:"30",max:"120"}

# 背景音乐
execute as @a run function main:state/3/music_roll

# 占位符，以免误调设置
item replace entity @a[tag=game_player] inventory.11 from block 0 -7 0 container.11
item replace entity @a[tag=game_player] inventory.12 from block 0 -7 0 container.12
item replace entity @a[tag=game_player] inventory.13 from block 0 -7 0 container.13
item replace entity @a[tag=game_player] inventory.14 from block 0 -7 0 container.14
item replace entity @a[tag=game_player] inventory.15 from block 0 -7 0 container.15

# 去逃避
execute if score $mode data matches 2 run function main:state/4/enter