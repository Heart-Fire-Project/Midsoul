title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.talent.active",fallback:"天赋触发",color:"aqua"}," » ",{translate:"ms.talent.001",fallback:"全神贯注"}]
playsound block.beacon.power_select player @s ~ ~ ~ 0.3 2
tag @s[scores={talent_1=1}] add talent_1_on
tag @s[scores={talent_2=1}] add talent_2_on
scoreboard players add @s temp.talent 1