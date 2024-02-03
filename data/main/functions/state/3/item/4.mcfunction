# 特效
title @s actionbar [{"translate":"ms.item.active","fallback":"宝物触发","color":"#33FFAA"}," » ",{"translate":"ms.item.4","fallback":"相位替换"}]
playsound minecraft:entity.enderman.teleport player @s 0 1000000 0 1000000
particle minecraft:glow_squid_ink ~ ~0.3 ~ 0.2 0.3 0.2 0.2 128

# 谁即将骂街？
tag @a[limit=1,sort=furthest,team=soul] add I4s
playsound minecraft:entity.enderman.teleport player @a[tag=I4s] 0 1000000 0 1000000
execute at @a[tag=I4s] run particle minecraft:glow_squid_ink ~ ~0.3 ~ 0.2 0.3 0.2 0.2 128

# 队友：你吗
summon marker ~ ~ ~ {Tags:[I4,game_entity]}
tp @e[tag=I4] @s
tp @s @a[limit=1,tag=I4s]
tp @a[limit=1,tag=I4s] @e[limit=1,tag=I4]
tag @a remove I4s
kill @e[tag=I4]

# 感动灵魂
execute unless entity @a[team=soul,distance=0.001..] run tellraw @s [{"text":" » ","color":"#33FFAA","bold":true},{"translate":"ms.info.item.4","fallback":"你已经是孤军奋战啦……在这我只能祝你成功〒▽〒","bold":false},"\n"]

# 记录数据
scoreboard players set @s item 0
scoreboard players add @s stat_temp_item 1