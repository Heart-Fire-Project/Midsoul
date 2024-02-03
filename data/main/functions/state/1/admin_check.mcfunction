execute if score $1_ticking countdown matches 260.. if score @s[team=admin] interact_check matches -1 run function main:state/1/player_enter/admin_trans
execute if score $1_ticking countdown matches 260.. if score @s[team=admin] interact_check matches -2 run tag @s add play_check

execute if score @s interact_check matches 900..999 run function debug:trigger_check

scoreboard players reset @s interact_check
scoreboard players enable @s interact_check