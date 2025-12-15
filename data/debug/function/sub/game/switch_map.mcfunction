# 玩家重新入场
function debug:sub/game/enter/general
playsound entity.illusioner.mirror_move player @a 0 1000000 0 70000

# 重置地图变量
function main:lib/map/variety/reset

# 先行获取当前数据
execute store result score $prev_goal data run data get storage ms:map shard_goal

# 清除旧的加载区
forceload remove all
forceload add -16 -16 16 16
function main:lib/map/data
function debug:sub/game/add_forceload/general

# 生成新物件
schedule function debug:sub/game/generate_item 1s