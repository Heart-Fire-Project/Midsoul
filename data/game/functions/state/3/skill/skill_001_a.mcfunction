title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color": "aqua"}," » ",{"translate":"ms.skill.001","fallback":"幻影迷踪"}]
scoreboard players add @s stat_temp_skill 1

playsound entity.illusioner.mirror_move player @s
particle minecraft:cloud ~ ~1 ~ 0.2 0.1 0.2 0.7 256 force @a
effect give @s invisibility 10 0 true
effect give @s speed 10 4 true
tag @s add skill_001_active
schedule function game:state/3/skill/skill_001_b 7s replace

scoreboard players set @s skill_cd 14000
function game:state/3/refresh_inventory
item replace entity @s weapon.offhand with air