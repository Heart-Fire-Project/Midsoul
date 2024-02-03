# 1XX - 外显设置
execute if score @s[team=!admin] interact_check matches 110 if score $settinglock data matches 0 run function debug:sub/mode/sele
execute if score @s[team=!admin] interact_check matches 111 if score $settinglock data matches 0 run function debug:sub/mode/prev
execute if score @s[team=!admin] interact_check matches 112 if score $settinglock data matches 0 run function debug:sub/mode/next
execute if score @s[team=!admin] interact_check matches 120 if score $settinglock data matches 0 run function debug:sub/map/sele
execute if score @s[team=!admin] interact_check matches 121 if score $settinglock data matches 0 run function debug:sub/map/prev
execute if score @s[team=!admin] interact_check matches 122 if score $settinglock data matches 0 run function debug:sub/map/next

execute if score @s[team=admin] interact_check matches 100 run function debug:sub/init_confirm
execute if score @s[team=admin] interact_check matches 101 run function debug:sub/game_lock
execute if score @s[team=admin] interact_check matches 102 run function debug:sub/setting_lock
execute if score @s[team=admin] interact_check matches 110 run function debug:sub/mode/sele
execute if score @s[team=admin] interact_check matches 111 run function debug:sub/mode/prev
execute if score @s[team=admin] interact_check matches 112 run function debug:sub/mode/next
execute if score @s[team=admin] interact_check matches 120 run function debug:sub/map/sele
execute if score @s[team=admin] interact_check matches 121 run function debug:sub/map/prev
execute if score @s[team=admin] interact_check matches 122 run function debug:sub/map/next

# 2XX - 内显设置
execute if score @s[team=!admin] interact_check matches 211 if score $settinglock data matches 0 run function debug:sub/mode/select {mode:"1"}
execute if score @s[team=!admin] interact_check matches 212 if score $settinglock data matches 0 run function debug:sub/mode/select {mode:"2"}
execute if score @s[team=!admin] interact_check matches 220 if score $settinglock data matches 0 run function debug:sub/map/select {map:"0"}
execute if score @s[team=!admin] interact_check matches 221 if score $settinglock data matches 0 run function debug:sub/map/select {map:"1"}
execute if score @s[team=!admin] interact_check matches 222 if score $settinglock data matches 0 run function debug:sub/map/select {map:"2"}
execute if score @s[team=!admin] interact_check matches 223 if score $settinglock data matches 0 run function debug:sub/map/select {map:"3"}

execute if score @s[team=admin] interact_check matches 200 run function main:init
execute if score @s[team=admin] interact_check matches 211 run function debug:sub/mode/select {mode:"1"}
execute if score @s[team=admin] interact_check matches 212 run function debug:sub/mode/select {mode:"2"}
execute if score @s[team=admin] interact_check matches 220 run function debug:sub/map/select {map:"0"}
execute if score @s[team=admin] interact_check matches 221 run function debug:sub/map/select {map:"1"}
execute if score @s[team=admin] interact_check matches 222 run function debug:sub/map/select {map:"2"}
execute if score @s[team=admin] interact_check matches 223 run function debug:sub/map/select {map:"3"}

# 3XX - 教程
execute if score @s interact_check matches 301 run function main:state/0/tutorial/shard
execute if score @s interact_check matches 302 run function main:state/0/tutorial/chest
execute if score @s interact_check matches 303 run function main:state/0/tutorial/lamp
execute if score @s interact_check matches 304 run function main:state/0/tutorial/portal

# 9XX - 转交到调试
execute if score @s interact_check matches 900..999 run function debug:trigger_check

scoreboard players reset @s interact_check
scoreboard players enable @s interact_check