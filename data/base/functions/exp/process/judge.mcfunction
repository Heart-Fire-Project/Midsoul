# 判断积分类型
execute as @a[scores={temp_exp=1..10}] at @s run function base:exp/process/a
execute as @a[scores={temp_exp=11..30}] at @s run function base:exp/process/b
execute as @a[scores={temp_exp=31..70}] at @s run function base:exp/process/c
execute as @a[scores={temp_exp=71..120}] at @s run function base:exp/process/d
execute as @a[scores={temp_exp=121..500}] at @s run function base:exp/process/e
execute as @a[scores={temp_exp=501..1000}] at @s run function base:exp/process/f
execute as @a[scores={temp_exp=1000..}] at @s run function base:exp/process/g

execute as @a[team=!admin] run function base:exp/level/show