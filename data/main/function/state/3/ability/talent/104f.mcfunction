title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.talent.over",fallback:"天赋终止",color:"gold"}," 🔁 ",{translate:"ms.talent.104",fallback:"隐于迷雾"}]
playsound entity.evoker.cast_spell player @s
particle spit ~ ~1 ~ 0.2 0.1 0.2 0.7 60 force @a

# 去除效果
effect clear @s invisibility

# 重置冷却/状态
scoreboard players set @s[scores={talent_1=4}] tick.talent_1 180000
tag @s[scores={talent_1=4}] remove talent_1_on
scoreboard players set @s[scores={talent_2=4}] tick.talent_2 180000
tag @s[scores={talent_2=4}] remove talent_2_on