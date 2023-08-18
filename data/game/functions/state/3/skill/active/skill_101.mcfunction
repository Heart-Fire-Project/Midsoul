title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color": "red"}," » ",{"translate":"ms.skill.101","fallback":"虔诚力场"}]

playsound block.enchantment_table.use player @s
particle totem_of_undying ~ ~1 ~ 0.2 0.1 0.2 0.1 64 force @a
effect give @a[team=alive,limit=1,sort=nearest] glowing 10 0
effect give @a[team=alive] glowing 5 0

scoreboard players set @s skill_cd 14000
function game:state/3/refresh_inventory
item replace entity @s weapon.offhand with air