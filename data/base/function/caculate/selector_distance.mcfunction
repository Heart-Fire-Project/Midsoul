# 计算选定目标间的距离
# 需要参数：target1 target2 (目标选择器形式)
# 需要前置：caculate/distance
# 输出结果：$front(整数位) $behind(小数位)

# 获取第一个实体坐标
$execute as $(target1) run function base:get_pos
data modify storage r7s:temp pos1.x set from storage r7s:base x
data modify storage r7s:temp pos1.y set from storage r7s:base y
data modify storage r7s:temp pos1.z set from storage r7s:base z

# 获取第二个实体坐标
$execute as $(target2) run function base:get_pos
data modify storage r7s:temp pos2.x set from storage r7s:base x
data modify storage r7s:temp pos2.y set from storage r7s:base y
data modify storage r7s:temp pos2.z set from storage r7s:base z

# 转换为整数 (保留 1 位小数)
execute store result storage r7s:temp xA int 1 run data get storage r7s:temp pos1.x 10
execute store result storage r7s:temp yA int 1 run data get storage r7s:temp pos1.y 10
execute store result storage r7s:temp zA int 1 run data get storage r7s:temp pos1.z 10
execute store result storage r7s:temp xB int 1 run data get storage r7s:temp pos2.x 10
execute store result storage r7s:temp yB int 1 run data get storage r7s:temp pos2.y 10
execute store result storage r7s:temp zB int 1 run data get storage r7s:temp pos2.z 10

# 转入计算距离
function base:caculate/distance with storage r7s:temp