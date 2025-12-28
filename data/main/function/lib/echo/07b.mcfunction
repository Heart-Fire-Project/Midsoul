# 选择一个点位
scoreboard players operation $entity_id temp = @s entity_id
execute as @e[tag=E07] if score @s entity_id = $entity_id temp run tag @s add no_select
tag @e[tag=E07,sort=random,limit=1,tag=!no_select] add E07_u
tp @s @n[tag=E07_u]
kill @e[tag=E07_u]
tag @e remove no_select

# 点个烟
particle white_smoke ~ ~1 ~ 0.1 0.2 0.1 0.1 256 force @a