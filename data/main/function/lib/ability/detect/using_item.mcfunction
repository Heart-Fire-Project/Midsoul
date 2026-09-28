# 确认计时
execute store result score @s temp run data get entity @s SelectedItemSlot
execute unless score @s[scores={detect.using=1}] temp = @s using_slot if score @s using_slot matches -2147483648..2147483647 run scoreboard players reset @s detect.using
scoreboard players add @s[scores={detect.using=1}] tick.using 1
execute store result score @s[scores={detect.using=1}] using_slot run data get entity @s SelectedItemSlot
execute unless score @s detect.using matches 1 run title @s[tag=!status_display,scores={tick.using=1..}] actionbar ""
execute unless score @s detect.using matches 1 run scoreboard players reset @s tick.using
execute unless score @s detect.using matches 1 run scoreboard players reset @s using_slot

# 按照选中的格子判定触发的是哪种能力
execute at @s[team=soul,scores={state=0,relic=7,tick.using=1..,using_slot=1}] run function main:lib/ability/relic/07t

scoreboard players reset @s detect.using