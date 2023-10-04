scoreboard players set @s[scores={stat_level=0..10}] temp2 1000
scoreboard players set @s[scores={stat_level=11..20}] temp2 1500
scoreboard players set @s[scores={stat_level=21..40}] temp2 3000
scoreboard players set @s[scores={stat_level=41..120}] temp2 5000
scoreboard players set @s[scores={stat_level=121..254}] temp2 7000
scoreboard players set @s[scores={stat_level=255}] temp2 2147483647

# 显示标题栏
title @s[scores={stat_level=..255}] actionbar [{"score":{"objective":"temp_exp","name":"@s"}}," + ",{"score":{"objective":"stat_exp","name":"@s"},"color": "light_purple"},{"text": "/","color": "#BC78EC"},{"score":{"objective":"temp2","name":"@s"},"color": "#BC78EC"}]
title @s[scores={stat_level=255}] actionbar [{"score":{"objective":"temp_exp","name":"@s"}}," + ",{"score":{"objective":"stat_exp","name":"@s"},"color": "light_purple"},{"text": "/ -","color": "#BC78EC"}]