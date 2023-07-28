# 神の力量 (没做完)
tellraw @s [{"text": "\n » ","color": "light_purple","bold": true},{"text": "设置面板","color": "light_purple"}]
tellraw @s "没做完, 有的这几项都是例子"

# 游戏锁定
execute if score $gamelock data matches 1 run tellraw @s [{"text":"[游戏锁定]","color":"light_purple","clickEvent":{"action":"run_command","value":"/function game:state/0/settings/gamelock_off"},"hoverEvent":{"action":"show_text","value":"阻止游戏开始"}}]
execute if score $gamelock data matches 0 run tellraw @s [{"text":"[游戏锁定]","color":"gray","clickEvent":{"action":"run_command","value":"/function game:state/0/settings/gamelock_on"},"hoverEvent":{"action":"show_text","value":"阻止游戏开始"}}]

# 碎片需求量
tellraw @s [{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/function game:state/0/settings/goal_minus"}},{"text": "  需要收集 ","color":"white"},{"score":{"objective":"data","name":"$shard_goal"},"color": "aqua"},{"text": "x 碎片  ","color":"white"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function game:state/0/settings/goal_plus"}}]

# 重置游戏
tellraw @s {"text":"[重置游戏]","color":"white","clickEvent":{"action":"run_command","value":"/function game:init"}}

# 润出管理
tellraw @s {"text":"[退出管理]","color":"yellow","clickEvent":{"action":"run_command","value":"/function game:state/0/admin_leaving"}}