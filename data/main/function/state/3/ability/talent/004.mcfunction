title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"aqua"}," » ",{"translate":"ms.talent.004","fallback":"魂魄汲取"}]
playsound block.amethyst_block.chime player @s ~ ~ ~ 5 1
particle dust_color_transition{from_color:563455,to_color:12016862,scale:1} ~ ~0.3 ~ 0.1 0.1 0.1 1.5 12 force @a
scoreboard players add @s temp.talent 1

# 给予效果
effect give @s regeneration 2 3

# 重置冷却
scoreboard players set @s[scores={talent_1=4}] tick.talent_1 600
scoreboard players set @s[scores={talent_2=4}] tick.talent_2 600

# 降级一次
tag @s[scores={talent_1=4},tag=!talent_1_on] remove T004
tag @s[scores={talent_2=4},tag=!talent_2_on] remove T004
tag @s[scores={talent_1=4},tag=talent_1_on] remove talent_1_on
tag @s[scores={talent_2=4},tag=talent_2_on] remove talent_2_on