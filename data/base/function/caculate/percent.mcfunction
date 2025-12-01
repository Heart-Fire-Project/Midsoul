# 计算百分比 A/B
# 需要参数：valueA sourceA calueB sourceB (计分板记录值)
# 输出结果：$front(整数位) $behind(小数位)

$scoreboard players operation $valueA temp = $(valueA) $(sourceA)
$scoreboard players operation $valueB temp = $(valueB) $(sourceB)
scoreboard players operation $valueA temp *= #10000 data
scoreboard players operation $valueA temp /= $valueB temp
scoreboard players operation $percent temp = $valueA temp
scoreboard players operation $percent temp /= #100 data
scoreboard players operation $front temp2 = $percent temp
scoreboard players operation $percent temp *= #100 data
scoreboard players operation $valueA temp -= $percent temp
scoreboard players operation $behind temp2 = $valueA temp