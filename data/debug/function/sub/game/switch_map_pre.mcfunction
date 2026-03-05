# 同步地图更改
$scoreboard players set $map data $(value)

# 当前区域内所有灵魂之灯不再准入
tag @e[tag=marker_gold] add enter_chosen

# 添加切换地图的强加载
function debug:sub/game/add_forceload/general

# 给一定时间供加载
schedule clear debug:sub/game/switch_map
schedule clear debug:sub/game/generate_item
schedule function debug:sub/game/switch_map 2s

# 向玩家提示
playsound block.note_block.pling player @s 0 1000000 0 120000 1.3
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @a [{text:"» ",bold:true,color:"aqua"},{translate:"ms.info.switch_map",fallback:"地图将在 2 秒后切换！",bold:false}]
function debug:panel/2