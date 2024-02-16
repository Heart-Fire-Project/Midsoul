# 重置计时
execute if score $chaos temp matches 0.. run scoreboard players set $chaos temp 1200

# 重新选择
execute if score $chaos temp matches 1200 run tag @a remove chaos_selected
execute if score $chaos temp matches 1200 if score $alive temp matches 3.. run tag @a[limit=2,sort=random] add chaos_selected

# 特殊效果
effect give @a[tag=chaos_selected] glowing 1 0 true
effect give @a[tag=!chaos_selected] resistance 1 4 true

# 倒计时
scoreboard players remove $chaos temp 1