title @s actionbar {"translate":"ms.skill.003active","fallback": "技能触发 » 逆向追踪","color": "aqua"}

playsound entity.evoker.cast_spell player @s
particle minecraft:sculk_charge_pop ~ ~0.2 ~ 0.2 0.1 0.2 0.1 12 force @a
effect give @a[team=protect,distance=0..8] glowing 30 0
effect give @a[team=protect,distance=8..16] glowing 25 0
effect give @a[team=protect,distance=16..24] glowing 20 0
effect give @a[team=protect,distance=24..50] glowing 15 0
effect give @a[team=protect,distance=50..] glowing 10 0

item replace entity @s weapon.offhand with air
function game:state/3/refresh_inventory
scoreboard players set @s skill_cd 14000