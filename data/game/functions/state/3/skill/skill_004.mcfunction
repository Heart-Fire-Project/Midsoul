title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color": "aqua"}," » ",{"translate":"ms.skill.004","fallback":"隔空取物"}]
scoreboard players add @s stat_temp_skill 1

tag @s add open_finish

scoreboard players set @s skill_cd 14000
function game:state/3/refresh_inventory
item replace entity @s weapon.offhand with air