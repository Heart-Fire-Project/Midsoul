# 按钮重生点侦测
particle instant_effect{color:16250100} -1932.5 93.2 2244.5 0.2 0.3 0.2 0.05 1 force @a
execute positioned -1932.5 93 2244.5 as @a[tag=game_player,distance=..0.7] run function main:lib/map/tick1/6a

# 船重生侦测
execute if block -1865 68 2226 oak_button[powered=true] positioned -1865 68 2226 run kill @e[tag=game_entity,type=oak_boat]
execute if block -1865 68 2226 oak_button[powered=true] run summon oak_boat -1860 65.5 2226 {Tags:[game_entity],Rotation:[270,0]}
execute if block -1865 68 2226 oak_button[powered=true] run setblock -1865 68 2226 air destroy

execute if block -1823 68 2213 spruce_button[powered=true] positioned -1823 68 2213 run kill @e[tag=game_entity,type=spruce_boat]
execute if block -1823 68 2213 spruce_button[powered=true] run summon spruce_boat -1828 65.5 2213 {Tags:[game_entity],Rotation:[90,0]}
execute if block -1823 68 2213 spruce_button[powered=true] run setblock -1823 68 2213 air destroy

execute if block -1835 68 2173 dark_oak_button[powered=true] positioned -1835 68 2173 run kill @e[tag=game_entity,type=dark_oak_boat]
execute if block -1835 68 2173 dark_oak_button[powered=true] run summon dark_oak_boat -1841 65.5 2173 {Tags:[game_entity],Rotation:[90,0]}
execute if block -1835 68 2173 dark_oak_button[powered=true] run setblock -1835 68 2173 air destroy

execute if block -1874 67 2174 birch_button[powered=true] positioned -1874 67 2174 run kill @e[tag=game_entity,type=birch_boat]
execute if block -1874 67 2174 birch_button[powered=true] run summon birch_boat -1873 65.5 2176 {Tags:[game_entity]}
execute if block -1874 67 2174 birch_button[powered=true] run setblock -1874 67 2174 air destroy