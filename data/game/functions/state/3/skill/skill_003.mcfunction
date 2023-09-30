title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color": "aqua"}," » ",{"translate":"ms.skill.003","fallback":"逆向追踪"}]
scoreboard players add @s stat_temp_skill 1

playsound entity.evoker.cast_spell player @s
particle minecraft:sculk_charge_pop ~ ~0.2 ~ 0.2 0.1 0.2 0.1 12 force @a
effect give @a[team=protect,distance=0..12] glowing 30 0
effect give @a[team=protect,distance=12..24] glowing 25 0
effect give @a[team=protect,distance=24..36] glowing 20 0
effect give @a[team=protect,distance=36..50] glowing 15 0
effect give @a[team=protect,distance=50..] glowing 10 0

scoreboard players set @s skill_cd 12000
function game:state/3/refresh_inventory
item replace entity @s weapon.offhand with air