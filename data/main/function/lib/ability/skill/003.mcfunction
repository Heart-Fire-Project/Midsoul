title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"#5599FF"}," » ",{translate:"ms.skill.003",fallback:"逆向追踪"}]
playsound entity.evoker.cast_spell player @a
particle sculk_charge_pop ~ ~0.2 ~ 0.2 0.1 0.2 0.1 12 force @a
scoreboard players add @s temp.skill 1

# 给予守卫效果
effect give @a[team=guardian,distance=60..] glowing 7 0
effect give @a[team=guardian,distance=40..60] glowing 10 0
effect give @a[team=guardian,distance=24..40] glowing 12 0
effect give @a[team=guardian,distance=12..24] glowing 15 0
effect give @a[team=guardian,distance=..12] glowing 20 0
effect give @a[team=guardian,distance=..24] slowness 5 1

# 给予自身效果
execute if entity @n[team=guardian,distance=60..] run effect give @s speed 7 1
execute if entity @n[team=guardian,distance=40..60] run effect give @s speed 10 1
execute if entity @n[team=guardian,distance=24..40] run effect give @s speed 12 1
execute if entity @n[team=guardian,distance=12..24] run effect give @s speed 15 1
execute if entity @n[team=guardian,distance=..12] run effect give @s speed 20 1

# 重置冷却
scoreboard players set @s tick.skill 140000