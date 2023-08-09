# 随机一遍地图
scoreboard players set $random_min data 1
scoreboard players set $random_max data 3
function base:random
scoreboard players operation $map temp = $random data

# 若有选择则按选择走
execute unless score $map_random data matches 1 run scoreboard players operation $map temp = $map_select data

# 强制加载
# 1 - 聚光圣殿
execute if score $map temp matches 1 run forceload add 1000 0 1250 200
execute if score $map temp matches 1 run forceload add 1000 201 1250 360
# 2 - 镇灵塔楼
execute if score $map temp matches 2 run forceload add 1000 1000 1200 1200
# 3 - 山间湖谷
execute if score $map temp matches 3 run forceload add 1000 -1000 1331 -850
execute if score $map temp matches 3 run forceload add 1000 -849 1331 -700
execute if score $map temp matches 3 run forceload add 1000 -699 1331 -650

# 重置对应地图变化项
execute if score $map temp matches 1 run function game:state/2/reset_map/1
execute if score $map temp matches 2 run function game:state/2/reset_map/2
execute if score $map temp matches 3 run function game:state/2/reset_map/3