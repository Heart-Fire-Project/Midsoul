title @s[scores={setting.ability_actionbar=2}] actionbar [{"translate":"ms.item.active","fallback":"宝物触发","color":"#33FFAA"}," » ",{"translate":"ms.item.7","fallback":"再生愈合"}]
playsound block.candle.extinguish player @a
scoreboard players set @s item 0
scoreboard players add @s temp.item 1
scoreboard players reset @s[scores={setting.ability_actionbar=2}] tick.using

effect give @s regeneration 3 3