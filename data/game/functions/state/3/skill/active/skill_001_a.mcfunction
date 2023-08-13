title @s actionbar {"translate":"ms.skill.001active","fallback": "技能触发 » 幻影迷踪","color": "aqua"}

playsound entity.illusioner.mirror_move player @s
particle minecraft:cloud ~ ~1 ~ 0.2 0.1 0.2 0.7 256 force @a
effect give @s invisibility 7 0 true
effect give @s speed 7 4 true
tag @s add skill_001_active
schedule function game:state/3/skill/active/skill_001_b 7s replace

item replace entity @s weapon.offhand with air
function game:state/3/refresh_inventory
scoreboard players set @s skill_cd 18000