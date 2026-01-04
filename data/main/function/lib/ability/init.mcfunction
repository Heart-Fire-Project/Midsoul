# 重置计分板
scoreboard objectives remove talent.004
scoreboard objectives add talent.004 dummy "魂魄汲取 / 仍需数量"
scoreboard players set @a[team=soul,scores={talent_1=4}] talent.004 3
scoreboard players set @a[team=soul,scores={talent_2=4}] talent.004 3
scoreboard objectives remove talent.004s
scoreboard objectives add talent.004s dummy "魂魄汲取 / 需求上限"
scoreboard players set @a[team=soul,scores={talent_1=4}] talent.004s 3
scoreboard players set @a[team=soul,scores={talent_2=4}] talent.004s 3
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
scoreboard players set @a[team=guardian,scores={talent_1=6}] tick.talent_1 120000
scoreboard players set @a[team=guardian,scores={talent_1=7}] tick.talent_1 000000
scoreboard players set @a[team=soul,scores={talent_2=1}] tick.talent_2 100000
scoreboard players set @a[team=soul,scores={talent_2=2}] tick.talent_2 120000
scoreboard players set @a[team=soul,scores={talent_2=4}] tick.talent_2 006000
scoreboard players set @a[team=guardian,scores={talent_2=4}] tick.talent_2 180000
scoreboard players set @a[team=guardian,scores={talent_2=6}] tick.talent_2 120000
scoreboard players set @a[team=guardian,scores={talent_2=7}] tick.talent_2 000000

# 重置标签
tag @a remove skill_on
tag @a remove talent_1_on
tag @a remove talent_2_on
tag @a remove item_on
tag @a remove T004
tag @a remove T004_s
tag @a remove S004_a
tag @a remove S004_b