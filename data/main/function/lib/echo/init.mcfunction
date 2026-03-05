# 首次触发倒计时
$execute store result score $echo tick.general run random value $(min)..$(max)

# 卡西米尔的雨
execute if score $echo data matches 4 run weather thunder 77419

# 去除标签
tag @e remove E04