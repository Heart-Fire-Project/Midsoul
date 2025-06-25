# 所有非垂死灵魂都会产生标记，四秒后自我销毁
execute at @s[team=soul,scores={state=0}] run summon marker ~ ~ ~ {Tags:[new_tracker,tracker,game_entity]}
tp @n[tag=new_tracker] @s
scoreboard players operation @n[tag=new_tracker] player_id = @s player_id
scoreboard players set @n[tag=new_tracker] tick.global 4
tag @e remove new_tracker

# 守卫者出现在标记半径三格内，视为正在追逐
execute if entity @e[tag=tracker,distance=..3] run scoreboard players add @s[team=guardian] temp.track 1

# 灵魂牵制判定条件同上，注意不要每个标记都加分
scoreboard players operation $player_id temp = @s player_id
execute as @e[tag=tracker] if score @s player_id = $player_id temp run tag @s add tie_pend
scoreboard players set $pending temp 0
execute at @e[tag=tie_pend] if entity @e[team=guardian,distance=..3] run scoreboard players set $pending temp 1
tag @e remove tie_pend
execute if score $pending temp matches 1 run scoreboard players add @s[team=soul] temp.tie 1