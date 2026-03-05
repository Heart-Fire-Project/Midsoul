# 传送门倒计时重设
execute store result score $4_portal tick.general run data get storage ms:map original_goal
scoreboard players operation $4_portal tick.general *= #100 data
scoreboard players add $4_portal tick.general 1600