title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"#5599FF"}," » ",{translate:"ms.skill.003",fallback:"逆向追踪"}]
playsound entity.evoker.cast_spell player @s
particle sculk_charge_pop ~ ~0.2 ~ 0.2 0.1 0.2 0.1 12 force @a
scoreboard players add @s temp.skill 1

# 给予效果
effect give @a[team=guardian,distance=60..] glowing 10 0
effect give @a[team=guardian,distance=40..60] glowing 15 0
effect give @a[team=guardian,distance=25..40] glowing 20 0
effect give @a[team=guardian,distance=12..25] glowing 25 0
effect give @a[team=guardian,distance=0..12] glowing 30 0
effect give @a[team=guardian,distance=12..25] slowness 6 1
effect give @a[team=guardian,distance=0..12] slowness 15 1

# 重置冷却
scoreboard players set @s tick.skill 140000