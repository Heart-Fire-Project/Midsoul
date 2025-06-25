# 拘束玩家们
tp @a[tag=game_player] 0 -5 0
tp @a[team=spectator] 0 777 0

# 小游戏 > 你画了我也不猜
execute as @a[team=spectator] at @s anchored eyes positioned ^ ^ ^7 run particle end_rod ~ ~ ~ 0 0 0 0 1

# 每刻一次刷进程
function main:state/1/process
function main:state/1/bossbar/spectator

# 如果玩家都没了，则直接回到大厅
execute unless entity @a[tag=game_player] unless score $1_process tick.global matches 1080..1200 run tellraw @a [{"text":"\n» ","color":"red","bold":true},{"translate":"ms.info.1.return","fallback":"未找到游戏玩家，进程终止","bold":false}]
execute unless entity @a[tag=game_player] unless score $1_process tick.global matches 1080..1200 run function main:state/0/enter