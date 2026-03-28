title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.talent.active",fallback:"天赋触发",color:"gold"}," » ",{translate:"ms.talent.107",fallback:"碎片侵蚀"}]
playsound block.sculk_catalyst.bloom player @a ~ ~ ~ 2 1.2
particle firework ~ ~2.2 ~ 0 0 0 0 1 force @a
scoreboard players add @s temp.talent 1

# 施加效果
tag @e[sort=random,limit=1,tag=blue] add T107
scoreboard players add @s talent.107 1

# 重置冷却
scoreboard players set @s[scores={talent_1=7}] tick.talent_1 70000
scoreboard players set @s[scores={talent_2=7}] tick.talent_2 70000