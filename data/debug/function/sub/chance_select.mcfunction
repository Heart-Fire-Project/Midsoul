$scoreboard players set $$(type)_chance setting $(value)

# 刷新
execute if score $state data matches 0 run function main:state/0/refresh/block
execute if score $state data matches 0 run function main:state/0/refresh/sign

# 若通过调试面板触发，则再次呼起
execute if score @s detect.interact matches -1999..-1000 run function debug:panel/1
execute unless score @s detect.interact matches ..-1 run playsound ui.button.click player @s 0 1000000 0 120000