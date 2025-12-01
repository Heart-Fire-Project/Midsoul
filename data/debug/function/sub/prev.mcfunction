$function base:modify_setting/prev {setting:"$$(type)",max:"$(max)"}

# 部分项目特殊调整
execute if score $echo_page setting matches 0 run scoreboard players set $echo_page setting 2

# 刷新
execute if score $state data matches 0 run function main:state/0/refresh/block
execute if score $state data matches 0 run function main:state/0/refresh/sign
$execute if score $state data matches 0 run function main:lib/$(type)

# 若通过调试面板触发，则再次呼起
execute unless score @s detect.interact matches ..-1 run playsound ui.button.click player @s 0 1000000 0 120000