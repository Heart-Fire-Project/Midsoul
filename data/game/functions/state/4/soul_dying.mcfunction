tp @s @e[limit=1,tag=death_mark]

scoreboard players set @s[tag=!healed_1,tag=!healed_2] countdown 601
scoreboard players set @s[tag=healed_1,tag=!healed_2] countdown 451
scoreboard players set @s[tag=healed_1,tag=healed_2] countdown 301
scoreboard players set @s[tag=!healed_1,tag=healed_2] countdown 151
scoreboard players set @s state 1

function game:state/3/refresh_inventory
function game:state/4/give_effect
function game:state/3/new_light
kill @e[tag=death_mark]

tag @s remove skill_002_active
tag @s remove soul_died