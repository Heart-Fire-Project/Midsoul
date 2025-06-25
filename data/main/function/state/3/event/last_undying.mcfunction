# 颜色变化
scoreboard players add $3_lasthope_color tick.global 1
execute if score $3_lasthope_color tick.global matches 10 run scoreboard players set $3_lasthope_color tick.global -8
scoreboard players operation $color temp = $3_lasthope_color tick.global
execute if score $color temp matches ..-1 run scoreboard players operation $color temp *= #-1 data

# 确认显示者
tag @a remove show_title
execute as @a[tag=game_player] unless score @s tick.using matches 1.. run tag @s add show_title

# 快捷栏提示
execute if score $color temp matches 0 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⚕ ","color":"#FFA50F"},{"translate":"ms.info.last_undying","fallback":"最终锚点 · 灵魂之灯点亮速度加倍","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⚕"]
execute if score $color temp matches 1 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⚕ ","color":"#FFA815"},{"translate":"ms.info.last_undying","fallback":"最终锚点 · 灵魂之灯点亮速度加倍","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⚕"]
execute if score $color temp matches 2 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⚕ ","color":"#FFAA1B"},{"translate":"ms.info.last_undying","fallback":"最终锚点 · 灵魂之灯点亮速度加倍","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⚕"]
execute if score $color temp matches 3 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⚕ ","color":"#FFAD20"},{"translate":"ms.info.last_undying","fallback":"最终锚点 · 灵魂之灯点亮速度加倍","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⚕"]
execute if score $color temp matches 4 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⚕ ","color":"#FFAF26"},{"translate":"ms.info.last_undying","fallback":"最终锚点 · 灵魂之灯点亮速度加倍","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⚕"]
execute if score $color temp matches 5 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⚕ ","color":"#FEB22C"},{"translate":"ms.info.last_undying","fallback":"最终锚点 · 灵魂之灯点亮速度加倍","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⚕"]
execute if score $color temp matches 6 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⚕ ","color":"#FEB432"},{"translate":"ms.info.last_undying","fallback":"最终锚点 · 灵魂之灯点亮速度加倍","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⚕"]
execute if score $color temp matches 7 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⚕ ","color":"#FEB737"},{"translate":"ms.info.last_undying","fallback":"最终锚点 · 灵魂之灯点亮速度加倍","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⚕"]
execute if score $color temp matches 8 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⚕ ","color":"#FEB93D"},{"translate":"ms.info.last_undying","fallback":"最终锚点 · 灵魂之灯点亮速度加倍","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⚕"]
execute if score $color temp matches 9 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⚕ ","color":"#FEBC43"},{"translate":"ms.info.last_undying","fallback":"最终锚点 · 灵魂之灯点亮速度加倍","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⚕"]