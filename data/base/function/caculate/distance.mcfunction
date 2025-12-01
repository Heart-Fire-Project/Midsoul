# 计算距离 | 最多支持距离 1023.0 格，若有需要自行调整 $step
# 需要参数：xA yA zA xB yB zB (导入的数据应当*100 且无小数；可以与 caculate/selector_distance 配合使用)
# 需要前置：caculate/sqrt_step caculate/tenths
# 输出结果：$front(整数位) $behind(小数位)

# 计算距离
$scoreboard players set $dx temp $(xA)
$scoreboard players set $x temp $(xB)
scoreboard players operation $dx temp -= $x temp
execute if score $dx temp < #0 temp run scoreboard players operation $dx temp *= #-1 temp

$scoreboard players set $dy temp $(yA)
$scoreboard players set $y temp $(yB)
scoreboard players operation $dy temp -= $y temp
execute if score $dy temp < #0 temp run scoreboard players operation $dy temp *= #-1 temp

$scoreboard players set $dz temp $(zA)
$scoreboard players set $z temp $(zB)
scoreboard players operation $dz temp -= $z temp
execute if score $dz temp < #0 temp run scoreboard players operation $dz temp *= #-1 temp

# 计算平方和
scoreboard players operation $dx2 temp = $dx temp
scoreboard players operation $dx2 temp *= $dx temp
scoreboard players operation $dy2 temp = $dy temp
scoreboard players operation $dy2 temp *= $dy temp
scoreboard players operation $dz2 temp = $dz temp
scoreboard players operation $dz2 temp *= $dz temp
scoreboard players operation $sum temp = $dx2 temp
scoreboard players operation $sum temp += $dy2 temp
scoreboard players operation $sum temp += $dz2 temp

# 二分法计算平方根
scoreboard players set $result temp 0
scoreboard players set $step temp 5120
function base:caculate/sqrt_step

# 十分位处理
function base:caculate/tenths {value:"$result",source:"temp"}