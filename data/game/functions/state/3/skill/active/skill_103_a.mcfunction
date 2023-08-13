title @s actionbar {"translate":"ms.skill.103active","fallback": "技能触发 » 唤灵留迹","color": "red"}

playsound block.bell.resonate player @s
particle end_rod ~ ~0.3 ~ 0.2 0.1 0.2 0.2 64 force @a
tag @r[team=alive,scores={state=0}] add skill_103_active
execute at @a[tag=skill_103_active] run particle end_rod ~ ~0.3 ~ 0.2 0.1 0.2 0.2 64 force @a
schedule function game:state/3/skill/active/skill_103_b 20s replace

item replace entity @s weapon.offhand with air
function game:state/3/refresh_inventory
scoreboard players set @s skill_cd 16000