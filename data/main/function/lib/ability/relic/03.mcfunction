title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.relic.active",fallback:"宝物施放",color:"#33FFAA"}," » ",{translate:"ms.relic.3",fallback:"无垠时界"}]
playsound item.spyglass.use player @a
particle dust_plume ~ ~0.2 ~ 0.2 0.3 0.2 0.1 128 force @a
scoreboard players set @s relic 0
scoreboard players add @s temp.relic 1

# 减冷却
scoreboard players remove @s[tag=!skill_on] tick.skill 60000