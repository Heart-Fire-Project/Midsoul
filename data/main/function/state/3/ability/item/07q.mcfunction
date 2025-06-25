# 第一次丢弃
execute if score @s tick.item matches 0.. run title @s[scores={setting.ability_actionbar=2}] actionbar {"translate":"ms.item.drop","fallback":"再次按 [%s] 以丢弃","with":[{"keybind":"key.drop"}],"color":"#33FFAA"}
execute if score @s tick.item matches 0.. run tag @s add item_on
execute if score @s tick.item matches 0.. run scoreboard players set @s tick.item -400

# 第二次丢弃
execute if score @s tick.item matches -390..-1 run title @s actionbar ""
execute if score @s tick.item matches -390..-1 run scoreboard players set @s item 0
execute if score @s tick.item matches -390..-1 run tag @s remove item_on
execute if score @s tick.item matches -390..-1 run playsound block.composter.ready player @s
execute if score @s tick.item matches -390..-1 run scoreboard players set @s tick.item 0