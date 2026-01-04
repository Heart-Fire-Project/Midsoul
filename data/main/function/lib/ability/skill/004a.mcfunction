# 判定成功
# 触发近距离效果
execute if entity @a[team=guardian,distance=..20] run effect give @s speed 12 4
scoreboard players set @a[team=guardian,distance=..20,scores={tick.disable=..240}] tick.disable_max 240
scoreboard players set @a[team=guardian,distance=..20,scores={tick.disable=..240}] tick.disable 240

# 触发远距离效果
execute unless entity @a[team=guardian,distance=..20] run tag @p[team=guardian] add S004
effect give @a[tag=S004] glowing 12 0
effect give @a[tag=S004] slowness 12 1
tag @a remove S004

# 补充效果
tag @s add S004_a
particle dust_color_transition{from_color:[0.5,0.5,1.0],to_color:[0,1,0],scale:1} ~ ~1.6 ~ 0.3 0.2 0.3 0.1 48 force @a