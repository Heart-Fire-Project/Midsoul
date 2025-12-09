# 导入地图数据至 ms:temp
execute if score $map data matches ..-1 run function debug:sub/custom/read_all
execute if score $map data matches -1 run function debug:sub/custom/sync {num:"1"}
execute if score $map data matches -2 run function debug:sub/custom/sync {num:"2"}
execute if score $map data matches -3 run function debug:sub/custom/sync {num:"3"}
execute if score $map data matches -4 run function debug:sub/custom/sync {num:"4"}
execute if score $map data matches -5 run function debug:sub/custom/sync {num:"5"}
execute if score $map data matches -6 run function debug:sub/custom/sync {num:"6"}
execute if score $map data matches -7 run function debug:sub/custom/sync {num:"7"}
execute if score $map data matches -8 run function debug:sub/custom/sync {num:"8"}
execute if score $map data matches -9 run function debug:sub/custom/sync {num:"9"}

execute if score $map data matches 1 run data merge storage ms:temp {shard_goal:24,shard_summon:30,chest_summon:5,chest_max:14,size:3,complex:2,forceload1:"1000 1000 1110 1352",forceload2:"1110 1000 1220 1352",forceload3:"",center:"1109 9 1210"}
execute if score $map data matches 2 run data merge storage ms:temp {shard_goal:18,shard_summon:21,chest_summon:4,chest_max:10,size:2,complex:4,forceload1:"900 -900 1100 -1100",forceload2:"",forceload3:"",center:"1000 42 -1000"}
execute if score $map data matches 3 run data merge storage ms:temp {shard_goal:40,shard_summon:48,chest_summon:6,chest_max:15,size:5,complex:3,forceload1:"-1000 1000 -669 1160",forceload2:"-1000 1160 -669 1321",forceload3:"",center:"-819 1 1131"}

data modify storage ms:temp original_goal set from storage ms:temp shard_goal
data modify storage ms:temp original_summon set from storage ms:temp shard_summon