title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.talent.over",fallback:"天赋终止",color:"aqua"}," 🔁 ",{translate:"ms.talent.001",fallback:"全神贯注"}]
playsound block.beacon.deactivate player @s ~ ~ ~ 0.7 1
tag @s[scores={talent_1=1}] remove talent_1_on
tag @s[scores={talent_2=1}] remove talent_2_on

# 重置冷却
scoreboard players set @s[scores={talent_1=1}] tick.talent_1 100000
scoreboard players set @s[scores={talent_2=1}] tick.talent_2 100000