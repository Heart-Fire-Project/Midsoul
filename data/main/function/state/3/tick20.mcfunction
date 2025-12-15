# 第二状态处理
execute at @a[scores={state=1,tick.general=0..},team=soul] run playsound block.beacon.ambient player @a[scores={state=1,tick.general=0..},team=soul]

# 背景音乐处理
scoreboard players remove @a tick.music 1
execute as @a[scores={tick.music=..-1}] run function main:state/3/music_roll

# 灵气效果处理
scoreboard players remove @e[tag=blue,scores={tick.general=1..}] tick.general 1
execute as @e[tag=blue,scores={tick.general=0}] run data modify entity @s Glowing set value 0b
execute as @e[tag=blue,scores={tick.general=0}] run scoreboard players reset @s tick.general

# 灵魂宝物箱计时
execute if score $3_chest tick.general matches 1.. run scoreboard players remove $3_chest tick.general 1
execute if score $3_chest tick.general matches 0 run function main:state/3/event/summon/gray_refresh with storage ms:map

# 游戏内提示计时
execute if score $ingame_tip tick.general matches 1.. run scoreboard players remove $ingame_tip tick.general 1
execute if score $ingame_tip tick.general matches 0 run function main:lib/tip/general

# 回响提示计时
execute if score $echo_info tick.general matches 1.. if score $echo data matches 1.. run scoreboard players remove $echo_info tick.general 1
execute if score $echo_info tick.general matches 0 as @a[scores={setting.echo_info=1}] run function main:lib/echo

# 回响计时
execute if score $3_echo tick.general matches 1.. run scoreboard players remove $3_echo tick.general 1
execute if score $echo data matches 1.. run function main:state/3/echo/general

# 宝盒提示
execute at @e[tag=gray] run particle firefly ~ ~0.3 ~ 0.2 0.3 0.2 1 3 force @a

# 追踪牵制计时
scoreboard players remove @e[tag=tracker] tick.general 1
execute as @e[tag=tracker] if score @s tick.general matches 0 run kill @s
execute as @a[tag=game_player] at @s run function main:state/3/player/track

# 实时表现分
function base:caculate/time {unit:"min",tick:"$stat_gametime",source:"tick.general"}
execute if score $min temp2 matches 1..10 if score $sec temp2 matches 0 run tellraw @a[team=soul,scores={setting.instant_rating=1}] [{text:" +50 | ",color:"#4B9F5D"},{translate:"ms.rating.survive",fallback:"存活时长"}," ",{score:{name:"$min",objective:"temp2"}},":00"]