title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"gold"}," » ",{"translate":"ms.talent.103","fallback":"祛灵十字"}]
playsound entity.evoker.prepare_attack player @s
particle enchant ~ ~0.2 ~ 0.2 0.1 0.2 1 128 force @a
scoreboard players add @s temp.talent 1

# 计算并应用效果
scoreboard players operation @s tick.global *= #8 data
scoreboard players operation @s tick.global /= #10 data