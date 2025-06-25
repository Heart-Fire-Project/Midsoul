scoreboard players set $interact_speed setting 10
scoreboard players set $cooldown_speed setting 10
scoreboard players set $echo_chance setting 30

# 若通过调试面板触发，则再次呼起
execute if score @s detect.interact matches ..-1 run function debug:panel
execute unless score @s detect.interact matches ..-1 run playsound ui.button.click player @s 0 1000000 0 1000000