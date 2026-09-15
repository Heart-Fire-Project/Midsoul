# 计算选定目标间的中点
# 需要参数：target1 target2 (目标选择器形式)
# 需要前置：get_pos caculate/midpoint
# 输出结果：r7s:temp{x/y/z}

# 获取第一个实体坐标并转为 ×100 整数
$execute as $(target1) run function base:get_pos
execute store result storage r7s:temp xA int 1 run data get storage r7s:base x 100
execute store result storage r7s:temp yA int 1 run data get storage r7s:base y 100
execute store result storage r7s:temp zA int 1 run data get storage r7s:base z 100

# 获取第二个实体坐标并转为 ×100 整数
$execute as $(target2) run function base:get_pos
execute store result storage r7s:temp xB int 1 run data get storage r7s:base x 100
execute store result storage r7s:temp yB int 1 run data get storage r7s:base y 100
execute store result storage r7s:temp zB int 1 run data get storage r7s:base z 100

# 转入计算中点
function base:caculate/midpoint with storage r7s:temp