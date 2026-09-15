# 计算选定目标间的距离
# 需要参数：target1 target2 (目标选择器形式)
# 需要前置：get_pos caculate/distance
# 输出结果：$front(整数位) $behind(小数位)

# 获取第一个实体坐标并转为 ×10 整数
$execute as $(target1) run function base:get_pos
execute store result storage r7s:temp xA int 1 run data get storage r7s:base x 10
execute store result storage r7s:temp yA int 1 run data get storage r7s:base y 10
execute store result storage r7s:temp zA int 1 run data get storage r7s:base z 10

# 获取第二个实体坐标并转为 ×10 整数
$execute as $(target2) run function base:get_pos
execute store result storage r7s:temp xB int 1 run data get storage r7s:base x 10
execute store result storage r7s:temp yB int 1 run data get storage r7s:base y 10
execute store result storage r7s:temp zB int 1 run data get storage r7s:base z 10

# 转入计算距离
function base:caculate/distance with storage r7s:temp