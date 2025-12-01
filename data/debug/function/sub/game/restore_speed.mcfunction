scoreboard players set $interact_speed setting 100
scoreboard players set $cooldown_speed setting 100

# 若通过调试面板触发，则再次呼起
execute if score @s detect.interact matches -2999..-2000 run function debug:panel/2
execute unless score @s detect.interact matches ..-1 run playsound ui.button.click player @s 0 1000000 0 120000