$execute at @a[scores={player_id=$(player_id)}] run particle end_rod ~ ~0.3 ~ 0.2 0.1 0.2 0.2 64 force @a
$execute at @a[scores={player_id=$(player_id)}] run tag @e[sort=nearest,limit=1,tag=marker_gold] add S103
$effect give @a[scores={player_id=$(player_id)}] glowing 5 0