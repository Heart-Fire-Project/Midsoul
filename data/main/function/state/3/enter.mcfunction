# 阶段 3 - 收集
scoreboard players set $state data 3

# 重设计分板
scoreboard players set $shard_collect data 0
scoreboard players set $aura_rank data 0
scoreboard players set $soul_death data 0
scoreboard players set $soul_revive data 0
scoreboard players set $stat_gametime tick.general 0
scoreboard players set $affact_rating data 1
scoreboard players set $echo_info tick.general 10
scoreboard players set $3_process tick.general 0
scoreboard players set $3_echo tick.general -1
scoreboard players set @a state 0
scoreboard players set @a item 0
scoreboard players reset @a tick.enhance
scoreboard players set @a tick.enhance 0
scoreboard players reset @a tick.invincible
scoreboard players set @a tick.invincible 0
scoreboard players reset @a tick.general
scoreboard players reset @a detect.sneak
scoreboard players reset @a detect.sleep
scoreboard players reset @a detect.drop
scoreboard players reset @a tick.off_ground

# 游戏用新计分板
scoreboard objectives remove talent.004
scoreboard objectives add talent.004 dummy "魂魄汲取 / 仍需数量"
scoreboard players set @a[team=soul,scores={talent_1=4}] talent.004 2
scoreboard players set @a[team=soul,scores={talent_2=4}] talent.004 2
scoreboard objectives remove talent.004s
scoreboard objectives add talent.004s dummy "魂魄汲取 / 需求上限"
scoreboard players set @a[team=soul,scores={talent_1=4}] talent.004s 2
scoreboard players set @a[team=soul,scores={talent_2=4}] talent.004s 2
scoreboard players set $talent_007 data 5
scoreboard objectives remove talent.107
scoreboard objectives add talent.107 dummy "碎片侵蚀 / 污染数"
scoreboard players set @a[team=guardian,scores={talent_1=7}] talent.107 0
scoreboard players set @a[team=guardian,scores={talent_2=7}] talent.107 0
scoreboard objectives remove skill.004
scoreboard objectives add skill.004 dummy "铤而走险 / 负面效果几率"
scoreboard players set @a[team=soul,scores={skill=4}] skill.004 5
scoreboard objectives remove skill.102
scoreboard objectives add skill.102 dummy "灵力掌控 / 生效目标"
scoreboard objectives remove skill.103
scoreboard objectives add skill.103 dummy "唤灵留迹 / 生效计时"
scoreboard objectives remove skill.105
scoreboard objectives add skill.105 dummy "雾影阴霾 / 斩击计数"
scoreboard objectives remove skill.105s
scoreboard objectives add skill.105s dummy "雾影阴霾 / 加速重计倒数"

# 生成碎片
$function main:state/3/event/summon/blue {num:"$(shard_summon)"}
execute if score $echo data matches 2 store result storage ms:temp num int 1 run data get storage ms:map shard_summon 0.3
execute if score $echo data matches 2 run function main:state/3/echo/02 with storage ms:temp

# 生成初始宝盒
$function main:state/3/event/summon/gray {num:"$(chest_summon)"}

# 标题
title @a title ""
title @a subtitle [{text:"» ",color:"#7367F0",bold:true},{translate:"ms.title.3.start",fallback:"游戏开始",bold:false},{text:" «",bold:true}]
playsound block.end_portal.spawn player @a 0 1000000 0 120000 1

# Bossbar
bossbar set midsoul:info color blue
bossbar set midsoul:info style progress
bossbar set midsoul:heed style progress
bossbar set midsoul:warn style progress
$bossbar set midsoul:info max $(shard_goal)
$bossbar set midsoul:heed max $(shard_goal)
$bossbar set midsoul:warn max $(shard_goal)

# 初始冷却 | 以 0.01 刻为单位
# 单次冷却 |  40  |  45  |  50  |  55  |  60  |  65  |  70  |  75  |  80  |  85  |  90
# 实际写入 |  08  |  09  |  10  |  11  |  12  |  13  |  14  |  15  |  16  |  17  |  18
scoreboard players reset * tick.skill
scoreboard players reset * tick.talent_1
scoreboard players reset * tick.talent_2
scoreboard players set @a[team=soul,scores={skill=1}] tick.skill 120000
scoreboard players set @a[team=soul,scores={skill=2}] tick.skill 150000
scoreboard players set @a[team=soul,scores={skill=3}] tick.skill 140000
scoreboard players set @a[team=soul,scores={skill=4}] tick.skill 120000
scoreboard players set @a[team=soul,scores={skill=5}] tick.skill 090000
scoreboard players set @a[team=guardian,scores={skill=1}] tick.skill 140000
scoreboard players set @a[team=guardian,scores={skill=2}] tick.skill 120000
scoreboard players set @a[team=guardian,scores={skill=3}] tick.skill 140000
scoreboard players set @a[team=guardian,scores={skill=4}] tick.skill 120000
scoreboard players set @a[team=guardian,scores={skill=5}] tick.skill 140000
scoreboard players set @a[team=soul,scores={talent_1=1}] tick.talent_1 100000
scoreboard players set @a[team=soul,scores={talent_1=2}] tick.talent_1 120000
scoreboard players set @a[team=soul,scores={talent_1=4}] tick.talent_1 006000
scoreboard players set @a[team=guardian,scores={talent_1=4}] tick.talent_1 180000
scoreboard players set @a[team=guardian,scores={talent_1=5}] tick.talent_1 120000
scoreboard players set @a[team=guardian,scores={talent_1=7}] tick.talent_1 080000
scoreboard players set @a[team=soul,scores={talent_2=1}] tick.talent_2 100000
scoreboard players set @a[team=soul,scores={talent_2=2}] tick.talent_2 120000
scoreboard players set @a[team=soul,scores={talent_2=4}] tick.talent_2 006000
scoreboard players set @a[team=guardian,scores={talent_2=4}] tick.talent_2 180000
scoreboard players set @a[team=guardian,scores={talent_2=5}] tick.talent_2 120000
scoreboard players set @a[team=guardian,scores={talent_2=7}] tick.talent_2 080000

# 初始化标签
tag @a[team=soul] add no_hit
tag @a remove echo_target
tag @a remove rated_victim
tag @a remove skill_on
tag @a remove talent_1_on
tag @a remove talent_2_on
tag @a remove item_on
tag @a remove hit_soul
tag @a remove T004
tag @a remove S004_a
tag @a remove S004_b
tag @e remove E04

# 重设临时数据
scoreboard objectives remove temp.collect
scoreboard objectives add temp.collect dummy "单局碎片收集"
scoreboard objectives remove temp.heal
scoreboard objectives add temp.heal dummy "单局队友救助"
scoreboard objectives remove temp.open
scoreboard objectives add temp.open dummy "单局宝盒开启"
scoreboard objectives remove temp.dying
scoreboard objectives add temp.dying dummy "单局陷入垂死"
scoreboard objectives remove temp.hit
scoreboard objectives add temp.hit dummy "单局目标命中"
scoreboard objectives remove temp.down
scoreboard objectives add temp.down dummy "单局玩家击倒"
scoreboard objectives remove temp.skill
scoreboard objectives add temp.skill dummy "单局技能使用"
scoreboard objectives remove temp.talent
scoreboard objectives add temp.talent dummy "单局天赋使用"
scoreboard objectives remove temp.item
scoreboard objectives add temp.item dummy "单局宝物使用"
scoreboard objectives remove temp.time
scoreboard objectives add temp.time dummy "单局游玩时间"
scoreboard objectives remove temp.track
scoreboard objectives add temp.track dummy "单局追踪时间"
scoreboard objectives remove temp.tie
scoreboard objectives add temp.tie dummy "单局牵制时间"

# 刷新初始状态
execute as @a[tag=game_player] run function main:state/3/player/effect

# 回响效果
execute if score $echo data matches 1 run function main:state/3/echo/init {min:"45",max:"80"}
execute if score $echo data matches 4 run function main:state/3/echo/init {min:"20",max:"60"}
execute if score $echo data matches 7 run function main:state/3/echo/init {min:"30",max:"120"}

# 背景音乐
execute as @a run function main:state/3/music_roll

# 占位符，以免误调设定
item replace entity @a[tag=game_player] inventory.11 from block 0 -7 0 container.11
item replace entity @a[tag=game_player] inventory.12 from block 0 -7 0 container.12
item replace entity @a[tag=game_player] inventory.13 from block 0 -7 0 container.13
item replace entity @a[tag=game_player] inventory.14 from block 0 -7 0 container.14
item replace entity @a[tag=game_player] inventory.15 from block 0 -7 0 container.15

# 去逃避
execute if score $mode data matches 2 run function main:state/4/enter
scoreboard players set $guardian temp 0
execute as @a[team=guardian] run scoreboard players add $guardian temp 1
execute unless score $guardian_count data = $guardian temp run scoreboard players set $affact_rating data 0
execute unless score $guardian_count data = $guardian temp as @a[team=soul] run function main:state/4/revive
execute unless score $guardian_count data = $guardian temp run function main:state/5/enter