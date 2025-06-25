title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"aqua"}," » ",{"translate":"ms.talent.002","fallback":"赴汤蹈火"}]
playsound entity.elder_guardian.curse player @s
particle enchanted_hit ~ ~0.2 ~ 0.1 0.1 0.1 0.3 12 force @a
scoreboard players add @s temp.talent 1

# 给予效果
effect give @s speed 3 3

# 重置冷却
scoreboard players set @s[scores={talent_1=2}] tick.talent_1 12000
scoreboard players set @s[scores={talent_2=2}] tick.talent_2 12000