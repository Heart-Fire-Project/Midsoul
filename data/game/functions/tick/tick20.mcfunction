schedule function game:tick/tick20 20t replace

function base:bossbar/tick20

execute if score $state data matches 0 run function game:state/0/tick20
execute if score $state data matches 1 run function game:state/1/tick20
execute if score $state data matches 3 run function game:state/3/tick20
execute if score $state data matches 4 run function game:state/4/tick20