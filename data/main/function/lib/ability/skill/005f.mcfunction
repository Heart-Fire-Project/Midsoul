title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.over",fallback:"技能终止",color:"#5599FF"}," » ",{translate:"ms.skill.005",fallback:"锚定虚影"}]
scoreboard players operation $entity_id temp = @s entity_id
tag @s remove skill_on

# 判定是否在范围内 | 内设重置冷却，冷却补偿仅非首次施放生效
execute as @e[tag=S005r] if score @s entity_id = $entity_id temp run tag @s add S005t
scoreboard players set @s tick.skill 180000
execute at @e[tag=S005t] unless entity @s[distance=..0.7] run scoreboard players set @s[scores={temp.skill=2..}] tick.skill 40000
execute at @e[tag=S005t] as @s[distance=..0.7] run function main:lib/ability/skill/005c
tag @e remove S005t