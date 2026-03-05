title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.talent.active",fallback:"天赋触发",color:"aqua"}," » ",{translate:"ms.talent.004",fallback:"魂魄汲取"}]
playsound block.amethyst_block.chime player @a ~ ~ ~ 5 1
particle dust_color_transition{from_color:563455,to_color:12016862,scale:1} ~ ~0.3 ~ 0.1 0.1 0.1 1.5 12 force @a
scoreboard players add @s temp.talent 1

# 给予效果
effect give @s regeneration 2 3

# 消耗一次充能
tag @s[scores={talent_1=4},tag=!T004_s] remove T004
tag @s[scores={talent_2=4},tag=!T004_s] remove T004
tag @s[scores={talent_1=4},tag=T004_s] remove T004_s
tag @s[scores={talent_2=4},tag=T004_s] remove T004_s

# 重置冷却
scoreboard players set @s[scores={talent_1=4}] tick.talent_1 6000
scoreboard players set @s[scores={talent_2=4}] tick.talent_2 6000