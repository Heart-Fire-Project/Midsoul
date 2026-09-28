# 按照选中的格子判定触发的是哪种能力
execute at @s[team=soul,scores={relic=7,state=0},nbt={SelectedItemSlot:1}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:73007}}}}] run function main:lib/ability/relic/discard
execute at @s[team=guardian,scores={skill=5,state=0},nbt={SelectedItemSlot:1},tag=skill_on] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:73100}}}}] run function main:lib/ability/skill/105a
execute at @s[team=guardian,scores={skill=7,state=0,skill.107=0..1},nbt={SelectedItemSlot:1},tag=skill_on] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:73100}}}}] run function main:lib/ability/skill/107a

scoreboard players reset @s detect.drop