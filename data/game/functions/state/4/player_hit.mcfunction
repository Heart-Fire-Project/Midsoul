scoreboard players set @s countdown 71
scoreboard players set @s state 1
function game:state/4/give_effect
function base:totorial/hit_soul
function game:state/3/refresh_inventory

execute as @s[scores={talent_1=3}] at @s run function game:state/3/skill/talent_103
execute as @s[scores={talent_2=3}] at @s run function game:state/3/skill/talent_103