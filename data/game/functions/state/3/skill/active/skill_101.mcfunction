title @s actionbar {"translate":"ms.skill.101active","fallback": "技能触发 » 虔诚力场","color": "red"}

playsound block.enchantment_table.use player @s
particle totem_of_undying ~ ~1 ~ 0.2 0.1 0.2 0.1 64 force @a
effect give @a[team=alive,limit=1,sort=nearest] glowing 10 0
effect give @a[team=alive] glowing 5 0

item replace entity @s weapon.offhand with air
function game:state/3/refresh_inventory
scoreboard players set @s skill_cd 14000