scoreboard players add $entity_id temp 1
scoreboard players operation @r[tag=game_player,scores={entity_id=0}] entity_id = $entity_id temp
execute if entity @a[tag=game_player,scores={entity_id=0}] run function main:state/1/player_id