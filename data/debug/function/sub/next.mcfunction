$function base:modify_setting/next {setting:"$$(type)",limit:"$(limit)"}

# 部分项目特殊调整
execute if score $echo_page setting matches 0 run scoreboard players set $echo_page setting 1
execute if score $debug_map setting matches 0 run scoreboard players set $debug_map setting 1
execute if score $debug_echo setting matches 0 run scoreboard players set $debug_echo setting 1

# 刷新
execute if score $state data matches 0 run function main:state/0/refresh/block
execute if score $state data matches 0 run function main:state/0/refresh/sign
$execute if score $state data matches 0 run function main:lib/$(type)

# 若通过调试面板触发，则再次呼起
execute if score @s detect.interact matches -1999..-1000 run function debug:panel/1
execute if score @s detect.interact matches -2999..-2000 run function debug:panel/2
execute unless score @s detect.interact matches ..-1 run playsound ui.button.click player @s 0 1000000 0 120000