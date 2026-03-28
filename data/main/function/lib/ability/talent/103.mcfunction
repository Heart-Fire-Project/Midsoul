title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.talent.active",fallback:"天赋触发",color:"gold"}," » ",{translate:"ms.talent.103",fallback:"祛灵十字"}]
playsound entity.evoker.prepare_attack player @a
particle enchant ~ ~0.2 ~ 0.2 0.1 0.2 1 64 force @a
scoreboard players add @s temp.talent 1

# 计算并应用效果
scoreboard players operation @s temp = @s tick.general
scoreboard players operation @s temp *= #15 data
scoreboard players operation @s temp /= #100 data
scoreboard players operation @s tick.general -= @s temp