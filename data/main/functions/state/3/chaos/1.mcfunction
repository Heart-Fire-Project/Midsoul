# 重置计时
execute if score $echo temp matches ..0 run scoreboard players set $echo temp 1200

# 重新选择
execute if score $echo temp matches 1200 run tag @a remove echo_selected
execute if score $echo temp matches 1200 if score $alive temp matches 3.. run tag @a[limit=2,sort=random] add echo_selected

# 特殊效果
effect give @a[tag=echo_selected] glowing 1 0 true
execute if score $alive temp matches 3.. run effect give @a[tag=!echo_selected] resistance 1 4 true

# 倒计时
scoreboard players remove $echo temp 1