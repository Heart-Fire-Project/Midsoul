# 锚点标记粒子
execute at @s[tag=S005m] run particle portal ~ ~0.2 ~ 0 0 0 0.1 1 force @a[team=!guardian]

# 传送区域特效
execute at @s[tag=S005r] positioned ~ ~0.2 ~ run particle end_rod ^ ^ ^0.7 0 0 0 0 1 force @a
execute at @s[tag=S005r] run tp @s ~ ~ ~ ~15 0
scoreboard players remove @s[tag=S005r] tick.general 1
kill @s[tag=S005r,scores={tick.general=..0}]