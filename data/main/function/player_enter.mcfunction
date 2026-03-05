# 若是游戏阶段下的守卫者，不做处理
execute unless entity @s[team=guardian] run function main:player_enter_spec
execute if entity @s[team=guardian] unless score $state data matches 3..98 run function main:player_enter_spec

# 将音效最提前处理以适配管理员退出
execute if score @s leave_game matches 1.. run playsound entity.experience_orb.pickup player @a 0 1000000 0 120000 1

# 都需进行的流程
execute if score $state data matches 3.. run function main:lib/event/music_roll
scoreboard players set @s leave_game 0

# 重新设置各个 Bossbar
execute if score $state data matches 0 run bossbar set midsoul:info players @a
execute if score $state data matches 1 run bossbar set midsoul:info players @a[team=spectator]
execute if score $state data matches 2 run bossbar set midsoul:info players @a[team=spectator]

# 守卫者刷新当前状态
execute if data storage ms:mode {logic:"1"} as @s[team=guardian] run function main:state/3/player/effect
execute if score $state data matches 3.. run tellraw @s[team=guardian] [{text:"» ",bold:true,color:"red"},{translate:"ms.info.mid_guar",fallback:"游戏尚未结束，你可以继续进行游戏！",bold:false}]