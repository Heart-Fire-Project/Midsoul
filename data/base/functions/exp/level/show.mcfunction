scoreboard players set @s[scores={stat_level=0..10}] max_exp 1000
scoreboard players set @s[scores={stat_level=11..20}] max_exp 1500
scoreboard players set @s[scores={stat_level=21..40}] max_exp 3000
scoreboard players set @s[scores={stat_level=41..120}] max_exp 5000
scoreboard players set @s[scores={stat_level=121..254}] max_exp 7000
scoreboard players set @s[scores={stat_level=255}] max_exp 2147483647

# 显示标题栏
title @s[scores={stat_level=..255}] actionbar [{"score":{"objective":"temp_exp","name":"@s"}}," + ",{"score":{"objective":"stat_exp","name":"@s"},"color": "light_purple"},{"text": "/","color": "#BC78EC"},{"score":{"objective":"max_exp","name":"@s"},"color": "#BC78EC"}]
title @s[scores={stat_level=255}] actionbar [{"score":{"objective":"temp_exp","name":"@s"}}," + ",{"score":{"objective":"stat_exp","name":"@s"},"color": "light_purple"},{"text": "/ -","color": "#BC78EC"}]