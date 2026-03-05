# 判定成功
# 触发近距离效果
execute if entity @a[team=guardian,distance=..20] run effect give @s speed 6 6
scoreboard players set @a[team=guardian,distance=..8,scores={tick.disable=..120}] tick.disable_max 120
scoreboard players set @a[team=guardian,distance=..8,scores={tick.disable=..120}] tick.disable 120

# 触发远距离效果
execute unless entity @a[team=guardian,distance=..20] run tag @p[team=guardian] add S004
effect give @a[tag=S004] glowing 6 0
effect give @a[tag=S004] slowness 6 3
tag @a remove S004

# 补充效果
tag @s add S004_a
particle dust_color_transition{from_color:[0.5,0.5,1.0],to_color:[0,1,0],scale:1} ~ ~1.6 ~ 0.3 0.2 0.3 0.1 48 force @a