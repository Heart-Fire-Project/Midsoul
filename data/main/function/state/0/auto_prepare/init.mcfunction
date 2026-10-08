# 自动准备前置
tag @s add check_prepare
summon marker ~ ~ ~ {Tags:["check_prepare_n","check_prepare_m","lobby_entity"]}
tp @n[tag=check_prepare_n] @s
scoreboard players operation @n[tag=check_prepare_n] entity_id = @s entity_id
tag @e[tag=check_prepare_n] remove check_prepare_n