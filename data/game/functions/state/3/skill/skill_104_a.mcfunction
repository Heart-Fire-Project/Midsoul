title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color": "aqua"}," » ",{"translate":"ms.skill.104","fallback":"恶灵诅咒"}]
scoreboard players add @s stat_temp_skill 1

tag @r[tag=game_entity,tag=gray,tag=!cursed] add cursed
execute unless entity @e[tag=game_entity,tag=gray,tag=!cursed] run function game:state/3/skill/skill_104_c

scoreboard players set @s skill_cd 18000
function game:state/3/refresh_inventory
item replace entity @s weapon.offhand with air