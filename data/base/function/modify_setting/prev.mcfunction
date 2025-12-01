# 调整设定至上一项
# 需要参数：setting(设定项) max{该值应为最大值}、
# 注意在调整至 0 时不会视为超限

$scoreboard players remove $(setting) setting 1
$execute if score $(setting) setting matches ..-1 run scoreboard players set $(setting) setting $(max)