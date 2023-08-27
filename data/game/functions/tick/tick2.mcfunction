schedule function game:tick/tick2 2t replace

function base:bossbar/tick2
function debug:tick2

execute if score $state data matches 1 run function game:state/1/tick2
execute if score $state data matches 3 run function game:state/3/tick2
execute if score $state data matches 4 run function game:state/4/tick2