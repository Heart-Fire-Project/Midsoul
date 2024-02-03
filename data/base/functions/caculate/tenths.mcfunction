#> base:caculate/tenths
#  @input value source_value cacu 10 source_mem
#  @input 需计分板包含常数项 10
#  @output $front $behind

$scoreboard players operation $front $(cacu) = $(value) $(source_value)
$scoreboard players operation $behind $(cacu) = $front $(cacu)
$scoreboard players operation $front $(cacu) /= $(10) $(source_mem)
$scoreboard players operation $behind $(cacu) %= $(10) $(source_mem)