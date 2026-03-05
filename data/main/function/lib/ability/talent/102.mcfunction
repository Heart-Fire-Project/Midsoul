title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.talent.active",fallback:"天赋触发",color:"gold"}," » ",{translate:"ms.talent.102",fallback:"火冒三丈"}]
playsound entity.ravager.roar player @a ~ ~ ~ 0.2 1
particle angry_villager ~ ~1.8 ~ 0.3 0.1 0.3 1 3 force @a
scoreboard players add @s temp.talent 1

# 给予效果
effect give @a[team=soul,scores={state=0}] slowness 4 0