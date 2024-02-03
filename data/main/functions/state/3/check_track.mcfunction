# 作为灵魂
execute at @s[team=soul,scores={state=0}] run summon marker ~ ~0.2 ~ {Tags:[new_track,track_mark,game_entity]}
scoreboard players set @e[tag=new_track] countdown 2
tag @e remove new_track

# 作为守卫者
execute if entity @e[tag=track_mark,distance=..3] run scoreboard players add @s[team=protect] stat_temp_track_time 1

# 而那个标记自己
execute as @e[tag=track_mark] if score @s countdown matches 0 run kill @s