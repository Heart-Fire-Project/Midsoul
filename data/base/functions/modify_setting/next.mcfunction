#> base:modify_setting/next
#  调整设置至下一项
#  @input setting storage limit

$scoreboard players add $(setting) $(storage) 1
$execute if score $(setting) $(storage) matches $(limit) run scoreboard players set $(setting) $(storage) 0