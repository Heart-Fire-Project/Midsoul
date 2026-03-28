title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.talent.active",fallback:"天赋触发",color:"gold"}," » ",{translate:"ms.talent.106",fallback:"共振感应"}]
playsound entity.wither_skeleton.ambient player @a ~ ~ ~ 0.7 1.3
particle instant_effect{color:7997448} ~ ~0.2 ~ 0.2 0.3 0.2 0.1 12 force @a
scoreboard players add @s temp.talent 1

# 给予效果
effect give @a[team=soul,limit=2,sort=nearest,scores={state=0}] glowing 5 0

# 重置冷却
scoreboard players set @s[scores={talent_1=6}] tick.talent_1 120000
scoreboard players set @s[scores={talent_2=6}] tick.talent_2 120000