# 我要杀光光
kill @e[tag=game_entity]
scoreboard players set @a[tag=game_player] item 0

# 分批入场
execute as @a[team=protect] run function main:state/2/player_enter/protect
execute as @a[team=soul] run function main:state/2/player_enter/soul
execute as @a[team=spectator] run tp @s @r[limit=1,tag=game_player]