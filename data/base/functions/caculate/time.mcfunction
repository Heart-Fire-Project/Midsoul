#> base:caculate/time
#  时间计算
#  @input tick source_tick cacu 5 20 24 60 source_mem unit
#  @input 需计分板包含常数项 5 20 24 60 | unit 代表最终单位，输入为 sec/min/hrs/day
#  @output $ms $sec $min $hrs $day

$scoreboard players reset * $(cacu)
$scoreboard players set #$(unit) $(cacu) 1
$execute if score #day $(cacu) matches 1 run scoreboard players set #hrs $(cacu) 1
$execute if score #hrs $(cacu) matches 1 run scoreboard players set #min $(cacu) 1
$scoreboard players operation $tick $(cacu) = $(tick) $(source_tick)
$scoreboard players operation $sec $(cacu) = $tick $(cacu)
$scoreboard players operation $sec $(cacu) /= $(20) $(source_mem)
$scoreboard players operation $tick $(cacu) %= $(20) $(source_mem)
$execute store result score $ms $(cacu) run scoreboard players operation $tick $(cacu) *= $(5) $(source_mem)
$execute if score #min $(cacu) matches 1 run scoreboard players operation $min $(cacu) = $sec $(cacu)
$execute if score #min $(cacu) matches 1 run scoreboard players operation $min $(cacu) /= $(60) $(source_mem)
$execute if score #min $(cacu) matches 1 run scoreboard players operation $sec $(cacu) %= $(60) $(source_mem)
$execute if score #hrs $(cacu) matches 1 run scoreboard players operation $hrs $(cacu) = $min $(cacu)
$execute if score #hrs $(cacu) matches 1 run scoreboard players operation $hrs $(cacu) /= $(60) $(source_mem)
$execute if score #hrs $(cacu) matches 1 run scoreboard players operation $min $(cacu) %= $(60) $(source_mem)
$execute if score #day $(cacu) matches 1 run scoreboard players operation $day $(cacu) = $hrs $(cacu)
$execute if score #day $(cacu) matches 1 run scoreboard players operation $day $(cacu) /= $(24) $(source_mem)
$execute if score #day $(cacu) matches 1 run scoreboard players operation $hrs $(cacu) %= $(24) $(source_mem)