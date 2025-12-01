# 分段变化量，注意不要连续触发
$execute if score $$(type)_speed setting matches 0 run scoreboard players set $$(type)_speed setting 1000000
$execute if score $$(type)_speed setting matches 20..200 run scoreboard players remove $$(type)_speed setting 20
$execute if score $$(type)_speed setting matches 250..500 run scoreboard players remove $$(type)_speed setting 50
$execute if score $$(type)_speed setting matches 600..1000 run scoreboard players remove $$(type)_speed setting 100
$execute if score $$(type)_speed setting matches 1010000 run scoreboard players set $$(type)_speed setting 1000
$execute if score $$(type)_speed setting matches 1000000 run scoreboard players add $$(type)_speed setting 10000

# 若通过调试面板触发，则再次呼起
execute if score @s detect.interact matches -2999..-2000 run function debug:panel/2
execute unless score @s detect.interact matches ..-1 run playsound ui.button.click player @s 0 1000000 0 120000