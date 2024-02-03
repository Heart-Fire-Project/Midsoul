#> base:caculate/percent
#  百分比计算
#  @input valueA valueB sourceA sourceB cacu 10000 100 source_mem storage
#  @input 需计分板包含常数项 10000 100
#  @output $front $behind

$scoreboard players operation valueA $(cacu) = $(valueA) $(sourceA)
$scoreboard players operation valueB $(cacu) = $(valueB) $(sourceB)
$scoreboard players operation valueA $(cacu) *= $(10000) $(source_mem)
$scoreboard players operation valueA $(cacu) /= valueB $(cacu)
$scoreboard players operation $percent $(cacu) = valueA $(cacu)
$scoreboard players operation $percent $(cacu) /= $(100) $(source_mem)
$scoreboard players operation $front $(storage) = $percent $(cacu)
$scoreboard players operation $percent $(cacu) *= $(100) $(source_mem)
$scoreboard players operation valueA $(cacu) -= $percent $(cacu)
$scoreboard players operation $behind $(storage) = valueA $(cacu)