# 标记当前位置与玩家
summon marker ~ ~ ~ {Tags:[E07,game_entity,E07_n]}
tp @e[tag=E07_n] @s
scoreboard players operation @e[tag=E07_n] entity_id = @s entity_id
tag @e remove E07_n