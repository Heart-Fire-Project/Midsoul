title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.relic.over",fallback:"宝物终止",color:"#33FFAA"}," 🔁 ",{translate:"ms.relic.1",fallback:"无懈可击"}]
playsound item.armor.equip_iron player @a
tag @s remove item_on
scoreboard players set @s item 0

# 人为清除
effect clear @s[scores={tick.invincible=..0}] resistance
execute if score $muiti_guardian state matches 1 run effect give @s resistance infinite 0 true