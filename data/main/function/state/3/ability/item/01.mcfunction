title @s[scores={setting.ability_actionbar=2}] actionbar [{"translate":"ms.item.active","fallback":"宝物触发","color":"#33FFAA"}," » ",{"translate":"ms.item.1","fallback":"无懈可击"}]
playsound block.anvil.place player @a
scoreboard players add @s temp.item 1
tag @s add item_on

# 给予效果 - 实际时间短于 1 秒，需要人为清除
effect give @s resistance 1 4

# 设置计时
scoreboard players set @s tick.item -160