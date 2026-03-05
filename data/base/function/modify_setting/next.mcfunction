# 调整设定至下一项
# 需要参数：setting(设定项) limit{该值应为最大值 +1}
# 注意超限后回复到的值是 0

$scoreboard players add $(setting) setting 1
$execute if score $(setting) setting matches $(limit).. run scoreboard players set $(setting) setting 0