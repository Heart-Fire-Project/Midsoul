title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"#5599FF"}," » ",{translate:"ms.skill.001",fallback:"幻影迷踪"}]
playsound entity.illusioner.mirror_move player @a
particle cloud ~ ~1 ~ 0.2 1 0.2 0.5 144 force @a
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 给予效果
effect give @s invisibility 5 0
execute unless entity @a[team=guardian,distance=..12] run effect give @s speed 10 4
execute if entity @a[team=guardian,distance=..12] run effect give @s speed 10 6

# 设置计时
scoreboard players set @s tick.skill -20000