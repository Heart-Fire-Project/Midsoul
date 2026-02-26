# 第一次丢弃
execute if score @s tick.relic matches 0.. run title @s[scores={setting.ability_status=2}] actionbar {translate:"ms.relic.drop",fallback:"再次按 [%s] 以丢弃",with:[{keybind:"key.drop"}],color:"#33FFAA"}
execute if score @s tick.relic matches 0.. run tag @s add relic_on
execute if score @s tick.relic matches 0.. run scoreboard players set @s tick.relic -4000

# 第二次丢弃
execute if score @s tick.relic matches -3900..-1 run title @s[tag=!status_display] actionbar ""
execute if score @s tick.relic matches -3900..-1 run scoreboard players set @s relic 0
execute if score @s tick.relic matches -3900..-1 run tag @s remove relic_on
execute if score @s tick.relic matches -3900..-1 run playsound block.composter.ready player @s
execute if score @s tick.relic matches -3900..-1 run scoreboard players set @s tick.relic 0