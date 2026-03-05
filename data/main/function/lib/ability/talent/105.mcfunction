title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.talent.active",fallback:"天赋触发",color:"gold"}," » ",{translate:"ms.talent.105",fallback:"舍近求远"}]
playsound item.spyglass.use player @a ~ ~ ~ 1 0.5
particle crimson_spore ~ ~0.3 ~ 0.2 0.1 0.2 1 12 force @a
scoreboard players add @s temp.talent 1

# 给予效果
effect give @a[team=soul,limit=2,sort=furthest,scores={state=0}] glowing 6 0