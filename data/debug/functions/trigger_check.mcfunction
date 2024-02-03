execute if score @s[team=admin] interact_check matches 911 run function debug:sub/panel/select {type:"mode",num:"1"}
execute if score @s[team=admin] interact_check matches 912 run function debug:sub/panel/select {type:"mode",num:"2"}

execute if score @s[team=admin] interact_check matches 920 run function debug:sub/panel/select {type:"map",num:"0"}
execute if score @s[team=admin] interact_check matches 921 run function debug:sub/panel/select {type:"map",num:"1"}
execute if score @s[team=admin] interact_check matches 922 run function debug:sub/panel/select {type:"map",num:"2"}
execute if score @s[team=admin] interact_check matches 923 run function debug:sub/panel/select {type:"map",num:"3"}
execute if score @s[team=admin] interact_check matches 929 run function debug:sub/panel/map_tp

execute if score @s[team=admin] interact_check matches 930 run function debug:sub/panel/show_mark
execute if score @s[team=admin] interact_check matches 931 run function debug:sub/panel/count_mark
execute if score @s[team=admin] interact_check matches 932 run function debug:sub/panel/spawn_mark {type:"blue",colorid:"11"}
execute if score @s[team=admin] interact_check matches 933 run function debug:sub/panel/spawn_mark {type:"purple",colorid:"2"}
execute if score @s[team=admin] interact_check matches 934 run function debug:sub/panel/spawn_mark {type:"gold",colorid:"1"}
execute if score @s[team=admin] interact_check matches 935 run function debug:sub/panel/spawn_mark {type:"gray",colorid:"8"}
execute if score @s[team=admin] interact_check matches 936 run function debug:sub/panel/spawn_mark {type:"red",colorid:"14"}
execute if score @s[team=admin] interact_check matches 937 run function debug:sub/panel/spawn_mark {type:"lock",colorid:"0"}

execute if score @s[team=admin] interact_check matches 941 run function debug:sub/panel/force_start
execute if score @s[team=admin] interact_check matches 942 run function debug:sub/panel/restore_default
execute if score @s[team=admin] interact_check matches 943 run function main:init

execute if score @s[team=admin] interact_check matches 951 run function debug:sub/panel/speed_minus {type:"collect"}
execute if score @s[team=admin] interact_check matches 952 run function debug:sub/panel/speed_add {type:"collect"}

execute if score @s[team=admin] interact_check matches 961 run function debug:sub/panel/speed_minus {type:"cooldown"}
execute if score @s[team=admin] interact_check matches 962 run function debug:sub/panel/speed_add {type:"cooldown"}

scoreboard players reset @s interact_check
scoreboard players enable @s interact_check