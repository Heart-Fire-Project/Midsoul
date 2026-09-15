# 计算中点
# 需要参数：xA yA zA xB yB zB (导入的数据应当*100 且无小数；可以与 caculate/selector_midpoint 配合使用)
# 输出结果：r7s:base{x/y/z}

# X
$scoreboard players set $x temp $(xA)
$scoreboard players set $sx temp $(xB)
scoreboard players operation $x temp += $sx temp
scoreboard players operation $x temp /= #2 data
execute store result storage r7s:base x double 0.01 run scoreboard players get $x temp

# Y
$scoreboard players set $y temp $(yA)
$scoreboard players set $sy temp $(yB)
scoreboard players operation $y temp += $sy temp
scoreboard players operation $y temp /= #2 data
execute store result storage r7s:base y double 0.01 run scoreboard players get $y temp

# Z
$scoreboard players set $z temp $(zA)
$scoreboard players set $sz temp $(zB)
scoreboard players operation $z temp += $sz temp
scoreboard players operation $z temp /= #2 data
execute store result storage r7s:base z double 0.01 run scoreboard players get $z temp