# 按照选中的格子判定触发的是哪种能力
execute if entity @s[team=soul,scores={item=7},nbt={SelectedItemSlot:1}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:73007}}}}] at @s run function main:lib/ability/item/discard
execute if entity @s[team=guardian,scores={skill=5,state=0},nbt={SelectedItemSlot:1},tag=skill_on] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:73100}}}}] at @s run function main:lib/ability/skill/105a

scoreboard players reset @s detect.drop