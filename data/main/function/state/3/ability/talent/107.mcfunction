title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"gold"}," » ",{"translate":"ms.talent.107","fallback":"碎片侵蚀"}]
playsound block.sculk_catalyst.bloom player @s ~ ~ ~ 10000
particle firework ~ ~2.2 ~
scoreboard players add @s temp.talent 1

# 施加效果
tag @e[sort=random,limit=1,tag=blue] add T107
scoreboard players add @s talent.107 1

# 重置冷却
scoreboard players set @s[scores={talent_1=7}] tick.talent_1 8000
scoreboard players set @s[scores={talent_2=7}] tick.talent_2 8000