title @s actionbar {"translate":"ms.skill.002active","fallback": "技能触发 » 灵灯之筑","color": "aqua"}

playsound block.amethyst_block.chime player @s ~ ~ ~ 1000000
particle wax_on ~ ~0.5 ~ 0.25 0.3 0.25 5 32 force @a
effect give @s glowing 20 0 true
effect give @s slowness 20 3 true
tag @s add skill_002_active
schedule function game:state/3/skill/active/skill_002_b 410t replace

item replace entity @s weapon.offhand with air
function game:state/3/refresh_inventory
scoreboard players set @s skill_cd 24000