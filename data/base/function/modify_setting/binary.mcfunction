# 调整设定项 TF 互换 | 仅限 storage
# 需要参数：storage target (存储空间及路径)

$execute if data storage $(storage) {$(target):true} run scoreboard players set $lock temp 1
$execute if data storage $(storage) {$(target):false} run scoreboard players set $lock temp 0
$execute if data storage $(storage) {$(target):true} run data modify storage $(storage) $(target) set value false
$execute if score $lock temp matches 0 if data storage $(storage) {$(target):false} run data modify storage $(storage) $(target) set value true