#> base:modify_setting/prev
#  调整设置至上一项
#  @input setting storage max

$scoreboard players remove $(setting) $(storage) 1
$execute if score $(setting) $(storage) matches ..-1 run scoreboard players set $(setting) $(storage) $(max)