# 读取自定义地图数据
# 重置已有数据
$data merge storage ms:custom_$(num) {name:"----",size:"-",size_plus:false,complex:"-",complex_plus:false,shard_goal:"-",shard_summon:"-",chest_summon:"-",chest_max:"-",forceload1:"-",forceload2:"",forceload3:"",center:"-"}

# 强加载区域
# 如果某个位置是空气，那就添加占位符
scoreboard players reset $slot_0 temp
scoreboard players reset $slot_1 temp
scoreboard players reset $slot_2 temp
$execute unless items block $(x) $(y) $(z) container.0 * run scoreboard players set $slot_0 temp 1
$execute unless items block $(x) $(y) $(z) container.1 * run scoreboard players set $slot_1 temp 1
$execute unless items block $(x) $(y) $(z) container.2 * run scoreboard players set $slot_2 temp 1
$execute unless items block $(x) $(y) $(z) container.0 * run item replace block $(x) $(y) $(z) container.0 with structure_void[tooltip_display={hide_tooltip:true}]
$execute unless items block $(x) $(y) $(z) container.1 * run item replace block $(x) $(y) $(z) container.1 with structure_void[tooltip_display={hide_tooltip:true}]
$execute unless items block $(x) $(y) $(z) container.2 * run item replace block $(x) $(y) $(z) container.2 with structure_void[tooltip_display={hide_tooltip:true}]
$execute unless score $slot_0 temp matches 1 run data modify storage ms:custom_$(num) forceload1 set from block $(x) $(y) $(z) Items.[0].components.minecraft:custom_name
$execute unless score $slot_1 temp matches 1 run data modify storage ms:custom_$(num) forceload2 set from block $(x) $(y) $(z) Items.[1].components.minecraft:custom_name
$execute unless score $slot_2 temp matches 1 run data modify storage ms:custom_$(num) forceload3 set from block $(x) $(y) $(z) Items.[2].components.minecraft:custom_name

# 地图中心
$data modify storage ms:custom_$(num) center set from block $(x) $(y) $(z) Items.[3].components.minecraft:custom_name

# 碎片相关
$data modify storage ms:custom_$(num) shard_summon set from block $(x) $(y) $(z) Items.[4].count
$data modify storage ms:custom_$(num) shard_goal set from block $(x) $(y) $(z) Items.[5].count

# 大小/复杂度
$data modify storage ms:custom_$(num) size set from block $(x) $(y) $(z) Items.[6].count
$data modify storage ms:custom_$(num) complex set from block $(x) $(y) $(z) Items.[7].count

# 名字
$data modify storage ms:custom_$(num) name set from block $(x) $(y) $(z) Items.[8].components.minecraft:custom_name

# 宝盒相关
$data modify storage ms:custom_$(num) chest_summon set from block $(x) $(y) $(z) Items.[9].count
$data modify storage ms:custom_$(num) chest_max set from block $(x) $(y) $(z) Items.[10].count