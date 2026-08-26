# 第一次丢弃
title @s[scores={tick.relic=0..,setting.ability_status=2}] actionbar {translate:"ms.relic.drop",fallback:"再次按 [%s] 以丢弃",with:[{keybind:"key.drop"}],color:"#33FFAA"}
tag @s[scores={tick.relic=0..}] add relic_on
scoreboard players set @s[scores={tick.relic=0..}] tick.relic -4000

# 第二次丢弃
title @s[scores={tick.relic=-3900..-1},tag=!status_display] actionbar ""
scoreboard players set @s[scores={tick.relic=-3900..-1}] relic 0
tag @s[scores={tick.relic=-3900..-1}] remove relic_on
playsound block.composter.ready player @s[scores={tick.relic=-3900..-1}]
scoreboard players set @s[scores={tick.relic=-3900..-1}] tick.relic 0