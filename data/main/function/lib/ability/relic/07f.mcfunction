title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.relic.active",fallback:"宝物施放",color:"#33FFAA"}," » ",{translate:"ms.relic.7",fallback:"再生疗愈"}]
playsound block.candle.extinguish player @a
scoreboard players set @s relic 0
scoreboard players add @s temp.relic 1
scoreboard players reset @s[scores={setting.ability_status=2}] tick.using

effect give @s regeneration 3 3