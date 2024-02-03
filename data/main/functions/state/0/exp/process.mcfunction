# 设置经验上限
scoreboard players set @s[scores={stat_level=0..9}] exp_max 300
scoreboard players set @s[scores={stat_level=10..19}] exp_max 500
scoreboard players set @s[scores={stat_level=20..39}] exp_max 700
scoreboard players set @s[scores={stat_level=40..59}] exp_max 1000
scoreboard players set @s[scores={stat_level=60..99}] exp_max 1200
scoreboard players set @s[scores={stat_level=100..149}] exp_max 1500
scoreboard players set @s[scores={stat_level=150..199}] exp_max 1800
scoreboard players set @s[scores={stat_level=200..254}] exp_max 2000
scoreboard players set @s[scores={stat_level=255}] exp_max 2147483647

# 随机变量
execute as @s[scores={exp_temp=1..5}] run data merge storage ms:exp {exp:"1"}
execute as @s[scores={exp_temp=6..10}] run data merge storage ms:exp {exp:"2"}
execute as @s[scores={exp_temp=11..20}] run data merge storage ms:exp {exp:"3"}
execute as @s[scores={exp_temp=21..30}] run data merge storage ms:exp {exp:"4"}
execute as @s[scores={exp_temp=31..70}] run data merge storage ms:exp {exp:"5"}
execute as @s[scores={exp_temp=71..120}] run function base:random {storage:"data",max:"10",min:"3"}
execute as @s[scores={exp_temp=121..500}] run function base:random {storage:"data",max:"40",min:"10"}
execute as @s[scores={exp_temp=501..1000}] run function base:random {storage:"data",max:"70",min:"40"}
execute as @s[scores={exp_temp=1000..}] run function base:random {storage:"data",max:"100",min:"70"}
execute as @s[scores={exp_temp=71..}] store result storage ms:exp exp float 1 run scoreboard players get $random data

# 执行更改
execute as @s[scores={exp_temp=1..}] at @s run function main:state/0/exp/manage with storage ms:exp

# 判断升级
execute if score @s stat_exp >= @s exp_max at @s run function main:state/0/exp/levelup

# 显示标题栏
title @s[scores={stat_level=..255}] actionbar [{"score":{"objective":"exp_temp","name":"@s"}}," + ",{"score":{"objective":"stat_exp","name":"@s"},"color":"aqua"},{"text":"/","color":"#7367F0"},{"score":{"objective":"exp_max","name":"@s"},"color":"#7367F0"}]
title @s[scores={stat_level=255}] actionbar [{"score":{"objective":"exp_temp","name":"@s"}}," + ",{"score":{"objective":"stat_exp","name":"@s"},"color":"aqua"},{"text":"/ -","color":"#7367F0"}]

# 判定下一次间隔
execute as @s[scores={exp_temp=1..10}] run scoreboard players set @s countdown 5
execute as @s[scores={exp_temp=11..20}] run scoreboard players set @s countdown 4
execute as @s[scores={exp_temp=21..30}] run scoreboard players set @s countdown 3
execute as @s[scores={exp_temp=31..70}] run scoreboard players set @s countdown 2
execute as @s[scores={exp_temp=71..}] run scoreboard players set @s countdown 1

# 刷新一次经验栏
execute as @s[scores={exp_temp=1..}] run function base:set_exp {cacu:"cacu",source_current:"stat_exp",source_max:"exp_max",source_level:"stat_level",source_mem:"data",4:"#4",16:"#16",61:"#61",64:"#64",182:"#182",256:"#256"}