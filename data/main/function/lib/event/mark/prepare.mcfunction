# 获取粒子参数
function base:get_pos
$data merge storage r7s:base {color:$(color),offset:$(offset)}
execute store result score $value temp run data get storage r7s:base y 100
execute store result score $add temp run data get storage r7s:base offset 100
scoreboard players operation $value temp += $add temp
execute store result storage r7s:base y double 0.01 run scoreboard players get $value temp
function main:lib/event/mark/apply with storage r7s:base