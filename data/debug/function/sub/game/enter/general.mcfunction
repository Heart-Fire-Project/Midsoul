# 依旧杀光光
kill @e[tag=game_entity]

# 再次分批入场
execute as @r[team=guardian] run function debug:sub/game/enter/guardian
execute as @r[team=soul] run function debug:sub/game/enter/soul
execute as @a[team=spectator] run tp @s @r[limit=1,tag=game_player]
tp @a[team=admin] @n[team=guardian]