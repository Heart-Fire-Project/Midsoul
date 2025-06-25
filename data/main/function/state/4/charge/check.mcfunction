# 添加基础 tag
tag @s add interacting
tag @s add purple_interact

# 判断交互类型
execute unless score @s detect.sneak matches 1.. run tag @s remove interacting
execute unless entity @e[tag=purple,distance=..0.7,tag=!open_purple] run tag @s remove purple_interact

# 交互提示
tag @s remove show_title
execute unless score @s tick.using matches 1.. run tag @s add show_title
execute as @s[tag=purple_hint,tag=show_title] run title @s actionbar [{"translate":"ms.hint.purple","fallback":"长按 [%s] 以充能","with":[{"keybind":"key.sneak"}],"color":"light_purple"}]
execute as @s[tag=!interacting,tag=purple_interact,scores={setting.interact_hint=1}] run tag @s add purple_hint
execute as @s[tag=purple_hint,tag=!purple_interact] run title @s actionbar ""
tag @s[tag=interacting] remove purple_hint
tag @s[tag=!purple_interact] remove purple_hint

# 刷新进程 | 注意暂存，以供后续处理
scoreboard players set @s[tag=purple_interact,tag=interacting] tick.global 0
tag @s[tag=!purple_interact] remove interacting
scoreboard players reset @s[tag=purple_interact,tag=!interacting] tick.global
scoreboard players operation @s[tag=interacting] tick.global += $interact_speed setting

# 判定：进行交互时
execute as @s[scores={talent_1=7},tag=interacting] at @s run function main:state/3/ability/talent/007
execute as @s[scores={talent_2=7},tag=interacting] at @s run function main:state/3/ability/talent/007
execute if score $echo data matches 6 as @s[team=soul,tag=interacting] run function main:state/3/echo/06