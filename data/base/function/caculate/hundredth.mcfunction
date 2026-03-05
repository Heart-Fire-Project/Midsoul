# 将输入值自动 /100 并保留小数点后两位
# 需要参数：value source (计分板记录值)
# 输出结果：$front(整数位) $behind(小数位)

$scoreboard players operation $front temp2 = $(value) $(source)
scoreboard players operation $behind temp2 = $front temp2
scoreboard players operation $front temp2 /= #100 data
scoreboard players operation $behind temp2 %= #100 data