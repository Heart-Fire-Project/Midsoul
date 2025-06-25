title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"gold"}," » ",{"translate":"ms.talent.105","fallback":"舍近求远"}]
playsound entity.evoker.prepare_attack player @s
particle enchant ~ ~0.2 ~ 0.2 0.1 0.2 1 30 force @a
scoreboard players add @s temp.talent 1

# 给予效果
effect give @a[team=soul,limit=2,sort=furthest,scores={state=0}] glowing 5 0

# 重置冷却
scoreboard players set @s[scores={talent_1=5}] tick.talent_1 12000
scoreboard players set @s[scores={talent_2=5}] tick.talent_2 12000