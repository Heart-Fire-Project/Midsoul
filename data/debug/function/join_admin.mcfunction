# 加入 admin | 额外取消玩家身份
team join admin @s[team=!admin]
tag @s remove game_player
tellraw @s[team=admin] [{"text":"» ","bold":true,"color":"light_purple"},{"translate":"ms.info.leave_admin","fallback":"点这里以退出 admin","bold":false,"clickEvent":{"action":"run_command","value":"/trigger detect.interact set -999"}}]
title @s[team=!admin] actionbar [{"text":"💠 ","color":"light_purple"},{"translate":"ms.info.join_admin","fallback":"你已自动进入 admin"}," 💠"]