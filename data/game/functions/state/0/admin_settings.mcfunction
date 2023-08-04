# 设置面板
tellraw @s [{"text": "\n » ","color": "#BC78EC","bold": true},{"translate":"ms.setting","fallback": "设置面板","color": "#BC78EC"}]

# 游戏锁定
execute if score $gamelock data matches 1 run tellraw @s [{"translate":"ms.setting.gamelock","fallback":"[锁定游戏]","color":"green","clickEvent":{"action":"run_command","value":"/function game:state/0/settings/gamelock"},"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.setting.gamelock.hover","fallback":"阻止游戏开始"}]}}]
execute if score $gamelock data matches 0 run tellraw @s [{"translate":"ms.setting.gamelock","fallback":"[锁定游戏]","color":"gray","clickEvent":{"action":"run_command","value":"/function game:state/0/settings/gamelock"},"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.setting.gamelock.hover","fallback":"阻止游戏开始"}]}}]

# 地图选择
execute if score $map_random data matches 1 run tellraw @s [{"translate":"ms.setting.map_random","fallback": "[随机地图]","color": "green","clickEvent":{"action":"run_command","value":"/function game:state/0/settings/map_random"},"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.setting.map_random.hover","fallback":"随机选择地图"}]}}]
execute if score $map_random data matches 0 run tellraw @s [{"translate":"ms.setting.map_random","fallback": "[随机地图]","color": "gray","clickEvent":{"action":"run_command","value":"/function game:state/0/settings/map_random"},"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.setting.map_random.hover","fallback":"随机选择地图"}]}}]
execute if score $map_random data matches 0 if score $map_select data matches 1 run tellraw @s [{"text": " [<] ","color": "aqua","clickEvent": {"action": "run_command","value": "/function game:state/0/settings/map_prev"}},{"translate":"ms.map.1","fallback": "聚光圣殿"},{"text": " [>] ","color": "aqua","clickEvent": {"action": "run_command","value": "/function game:state/0/settings/map_next"}}]
execute if score $map_random data matches 0 if score $map_select data matches 2 run tellraw @s [{"text": " [<] ","color": "aqua","clickEvent": {"action": "run_command","value": "/function game:state/0/settings/map_prev"}},{"translate":"ms.map.2","fallback": "镇灵塔楼"},{"text": " [>] ","color": "aqua","clickEvent": {"action": "run_command","value": "/function game:state/0/settings/map_next"}}]
execute if score $map_random data matches 0 if score $map_select data matches 3 run tellraw @s [{"text": " [<] ","color": "aqua","clickEvent": {"action": "run_command","value": "/function game:state/0/settings/map_prev"}},{"translate":"ms.map.3","fallback": "山间湖谷"},{"text": " [>] ","color": "aqua","clickEvent": {"action": "run_command","value": "/function game:state/0/settings/map_next"}}]
execute if score $map_random data matches 0 run function game:state/0/map_info

# 重置游戏&退出管理
tellraw @s [{"translate":"ms.setting.init","fallback":"[重置游戏]","color":"red","clickEvent":{"action":"run_command","value":"/function game:state/0/settings/init"}}," ",{"translate":"ms.setting.leave","fallback":"[退出设置]","color":"yellow","clickEvent":{"action":"run_command","value":"/function game:state/0/admin_leaving"}}]

# 音效
playsound minecraft:block.stone_button.click_on player @s 0 1000000 0 1000000