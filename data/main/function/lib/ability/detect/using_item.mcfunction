# 确认计时
scoreboard players add @s[scores={detect.using=1}] tick.using 1
execute unless score @s detect.using matches 1 run title @s[tag=!status_display,scores={tick.using=1..}] actionbar ""
execute unless score @s detect.using matches 1 run scoreboard players reset @s tick.using

# 按照选中的格子判定触发的是哪种能力
execute if entity @s[team=soul,scores={state=0,item=7,tick.using=1..},nbt={SelectedItemSlot:1}] at @s run function main:lib/ability/item/07t

scoreboard players reset @s detect.using