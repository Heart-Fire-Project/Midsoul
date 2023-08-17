schedule function game:tick/tick1 1t replace

execute unless score $initcheck data matches 51121 run function game:init

function base:bossbar/tick1
execute as @a unless score @s leave_game matches 0 run function game:player_enter
execute as @a[x=-5,y=263,z=-5,dx=11,dy=2,dz=11] run function game:player_death

execute if score $state data matches 3 run function game:state/3/tick1
execute if score $state data matches 4 run function game:state/4/tick1

spawnpoint @a 0 263 0