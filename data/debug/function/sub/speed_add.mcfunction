# 分段变化量，注意不要连续触发
$execute if score $$(type)_speed setting matches 100 run scoreboard players set $$(type)_speed setting 1000000
$execute if score $$(type)_speed setting matches 50..90 run scoreboard players add $$(type)_speed setting 10
$execute if score $$(type)_speed setting matches 20..45 run scoreboard players add $$(type)_speed setting 5
$execute if score $$(type)_speed setting matches 0..18 run scoreboard players add $$(type)_speed setting 2
$execute if score $$(type)_speed setting matches 1010000 run scoreboard players set $$(type)_speed setting 0
$execute if score $$(type)_speed setting matches 1000000 run scoreboard players add $$(type)_speed setting 10000

# 若通过调试面板触发，则再次呼起
execute if score @s detect.interact matches ..-1 run function debug:panel
execute unless score @s detect.interact matches ..-1 run playsound ui.button.click player @s 0 1000000 0 1000000