title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.talent.active",fallback:"天赋触发",color:"gold"}," » ",{translate:"ms.talent.104",fallback:"隐于迷雾"}]
playsound entity.warden.tendril_clicks player @a
particle spit ~ ~1 ~ 0.2 0.5 0.2 0.1 48 force @a
scoreboard players add @s temp.talent 1

# 给予触发时效果
effect give @a[team=soul,scores={state=0}] darkness 5 0
effect give @s invisibility infinite 6
tag @s[scores={talent_1=4}] add talent_1_on
tag @s[scores={talent_2=4}] add talent_2_on