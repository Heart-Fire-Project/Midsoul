# 通用每秒刷新
# 地图特殊机制，一般是重置方块
execute if score $state data matches 2.. run function main:lib/map/tick20/general

# 背景音乐处理
scoreboard players remove @a tick.music 1
execute as @a[scores={tick.music=..-1}] run function main:lib/event/music_roll

# 灵气效果处理
scoreboard players remove @e[tag=blue,scores={tick.general=1..}] tick.general 1
execute as @e[tag=blue,scores={tick.general=0}] run data merge entity @s {Glowing:0b}
scoreboard players reset @e[tag=blue,scores={tick.general=0}] tick.general

# 灵魂宝物箱计时
execute if score $chest_refresh tick.general matches 1.. run scoreboard players remove $chest_refresh tick.general 1
execute if score $chest_refresh tick.general matches 0 run function main:lib/event/summon/gray_refresh with storage ms:map

# Tip! 计时
execute if score $ingame_tip tick.general matches 1.. run scoreboard players remove $ingame_tip tick.general 1
execute if score $ingame_tip tick.general matches 0 run function main:lib/tip/general

# 回响提示计时
execute if score $echo_info tick.general matches 1.. if score $echo data matches 1.. run scoreboard players remove $echo_info tick.general 1
execute if score $echo_info tick.general matches 0 as @a[scores={setting.echo_info=1}] run function main:lib/echo/info

# 回响计时
execute if score $echo tick.general matches 1.. run scoreboard players remove $echo tick.general 1
execute if score $echo data matches 1.. run function main:lib/echo/tick20

# 追踪牵制计时
scoreboard players remove @e[tag=tracker] tick.general 1
kill @e[tag=tracker,scores={tick.general=0}]
execute as @a[tag=game_player] at @s run function main:lib/player/track

# 宝盒提示
execute at @e[tag=gray] run particle firefly ~ ~0.3 ~ 0.2 0.3 0.2 1 3 force @a