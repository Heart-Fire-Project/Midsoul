# 按照选中的格子判定触发的是哪种能力
execute if entity @s[team=soul,scores={item=7},nbt={SelectedItemSlot:1}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"type":"item","id":73007}}}}] at @s run function main:state/3/ability/item/07q

scoreboard players reset @s detect.drop