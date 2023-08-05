schedule function game:tick/tick2 2t replace

function base:bossbar/tick2

execute if score $show_mark data matches 1 run function debug:tick2

execute if score $state data matches 0 run function game:state/0/tick2
execute if score $state data matches 1 run function game:state/1/tick2