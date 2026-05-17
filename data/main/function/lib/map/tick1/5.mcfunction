# 虚空机制
execute as @a[team=guardian] at @s as @s[y=0,dy=60] run function main:lib/map/base/void/guardian
execute as @a[team=soul] at @s as @s[y=0,dy=60] run function main:lib/map/base/void/soul

# 滑索机制 - 动画部分
scoreboard players add $map_animation tick.general 1
execute if score $map_animation tick.general matches 31.. run scoreboard players set $map_animation tick.general 1
scoreboard players remove @e[tag=animation_entity] tick.general 1
kill @e[tag=animation_entity,scores={tick.general=..-140}]
execute if score $map_animation tick.general matches 01 run clone 2115 82 -1910 2115 82 -1910 2112 96 -1927
execute if score $map_animation tick.general matches 24 run clone 2115 82 -1911 2115 82 -1911 2112 96 -1927
execute if score $map_animation tick.general matches 26 run clone 2115 82 -1912 2115 82 -1912 2112 96 -1927
execute if score $map_animation tick.general matches 28 run clone 2115 82 -1913 2115 82 -1913 2112 96 -1927
execute if score $map_animation tick.general matches 30 run clone 2115 82 -1914 2115 82 -1914 2112 96 -1927
execute if score $map_animation tick.general matches 01 run clone 2115 82 -1910 2115 82 -1910 2096 87 -1911
execute if score $map_animation tick.general matches 24 run clone 2115 82 -1911 2115 82 -1911 2096 87 -1911
execute if score $map_animation tick.general matches 26 run clone 2115 82 -1912 2115 82 -1912 2096 87 -1911
execute if score $map_animation tick.general matches 28 run clone 2115 82 -1913 2115 82 -1913 2096 87 -1911
execute if score $map_animation tick.general matches 30 run clone 2115 82 -1914 2115 82 -1914 2096 87 -1911
execute if score $map_animation tick.general matches 01 run function main:lib/map/tick1/5a
execute if score $map_animation tick.general matches 03 run function main:lib/map/tick1/5b
execute if score $map_animation tick.general matches 11 run function main:lib/map/tick1/5a
execute if score $map_animation tick.general matches 13 run function main:lib/map/tick1/5b
execute if score $map_animation tick.general matches 21 run function main:lib/map/tick1/5a
execute if score $map_animation tick.general matches 23 run function main:lib/map/tick1/5b

# 滑索机制 - 实际部分
execute positioned 2096.5 84.1 -1910.5 run kill @e[tag=M05,distance=..1.25]
execute positioned 2112.5 93.1 -1926.5 as @a[tag=game_player,distance=..0.7,nbt=!{RootVehicle:{}}] run function main:lib/map/tick1/5c