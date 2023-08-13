schedule function game:tick/tick1 1t replace

execute unless score $initcheck data matches 51121 run function game:init

function base:bossbar/tick1
execute as @a[x=-5,y=263,z=-5,dx=11,dy=2,dz=11] run function game:player_death

execute if score $state data matches 3 run function game:state/3/tick1