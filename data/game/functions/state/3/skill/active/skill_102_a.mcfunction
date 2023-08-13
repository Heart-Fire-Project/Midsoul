title @s actionbar {"translate":"ms.skill.102active","fallback": "技能触发 » 灵力掌控","color": "red"}

playsound entity.illusioner.cast_spell player @s
particle dust_color_transition 0.3 0.7 1 1 1 1 0 ~ ~0.2 ~ 0.1 0.1 0.1 1 10 force @a

tag @s add skill_102_active
scoreboard players reset $skill_102 temp
schedule function game:state/3/skill/active/skill_102_b 30s replace

item replace entity @s weapon.offhand with air
function game:state/3/refresh_inventory
scoreboard players set @s skill_cd 20000