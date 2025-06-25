schedule function main:tick/tick20 20t replace

# 管理员退出提示
execute unless score $admin_tip tick.global matches ..0 run scoreboard players remove $admin_tip tick.global 1
execute if score $admin_tip tick.global matches ..0 run tellraw @a[team=admin] [{"text":"» ","bold":true,"color":"light_purple"},{"translate":"ms.info.leave_admin","fallback":"点这里以退出 admin","bold":false,"clickEvent":{"action":"run_command","value":"/trigger detect.interact set -999"}}]
execute if score $admin_tip tick.global matches ..0 run scoreboard players set $admin_tip tick.global 150

# 掐掉通常的音乐声
stopsound @a music music.creative
stopsound @a music music.game

# 定向至其他函数
execute if score $state data matches 0 run function main:state/0/tick20
execute if score $state data matches 3..4 run function main:state/3/tick20