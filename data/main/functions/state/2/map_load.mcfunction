# 确定游戏地图
execute if score $gamemap data matches 0 run function base:random {storage:"data",max:"3",min:"1"}
scoreboard players operation $map temp = $random data
execute unless score $gamemap data matches 0 run scoreboard players operation $map temp = $gamemap data

# 添加强制加载
forceload remove all
# 1 - 聚光圣殿
execute if score $map temp matches 1 run forceload add 1000 0 1250 200
execute if score $map temp matches 1 run forceload add 1000 201 1250 360
# 2 - 镇灵塔楼
execute if score $map temp matches 2 run forceload add 1000 1000 1200 1200
# 3 - 山间湖谷
execute if score $map temp matches 3 run forceload add 1000 -1000 1331 -850
execute if score $map temp matches 3 run forceload add 1000 -849 1331 -700
execute if score $map temp matches 3 run forceload add 1000 -699 1331 -650

# 重置地图变量
execute if score $map temp matches 1 run fill 1197 1 123 1183 1 137 bone_block replace pearlescent_froglight
execute if score $map temp matches 2 run fill 1153 29 1101 1149 29 1105 red_candle[lit=false] replace red_candle
execute if score $map temp matches 3 run fill 1130 70 -900 1132 70 -902 obsidian replace crying_obsidian

# 存储地图信息
execute if score $map temp matches 1 run data merge storage ms:map {shard_goal:"24",shard_summon:"30",chest_summon:"5",chest_max:"12"}
execute if score $map temp matches 2 run data merge storage ms:map {shard_goal:"18",shard_summon:"21",chest_summon:"4",chest_max:"10"}
execute if score $map temp matches 3 run data merge storage ms:map {shard_goal:"40",shard_summon:"48",chest_summon:"6",chest_max:"15"}