# 按照选中的格子判定触发的是哪种能力
execute if entity @s[team=soul,scores={item=6},nbt={SelectedItemSlot:1}] run function main:lib/ability/item/06

scoreboard players reset @s detect.crossbow