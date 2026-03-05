# 通用快速刷新
# 教程
execute as @a[tag=game_player] at @s if entity @e[tag=blue,distance=..3] run advancement grant @s only main:tutorial/interact/1
execute as @a[tag=game_player] at @s if entity @e[tag=gray,distance=..3] run advancement grant @s only main:tutorial/interact/3

# 灵气弥散
execute if score $aura_rank data matches 2 as @e[tag=blue] at @s run function main:lib/event/aura/2

# 特殊效果
# 诅咒
execute at @e[tag=cursed_gray] run function main:lib/ability/base/cursed/surround

# 不允许离开场地
execute as @a[gamemode=spectator,team=!admin] at @s unless entity @e[tag=game_entity,distance=..100] run tp @s @r[tag=game_player]