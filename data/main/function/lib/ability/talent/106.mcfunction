title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.talent.active",fallback:"天赋触发",color:"gold"}," » ",{translate:"ms.talent.106",fallback:"共振感应"}]
playsound item.spyglass.use player @s ~ ~ ~ 10 0.5
particle crimson_spore ~ ~0.3 ~ 0.2 0.1 0.2 0.1 24 force @a
scoreboard players add @s temp.talent 1

# 给予效果
effect give @p[team=soul,scores={state=0}] glowing 3 0