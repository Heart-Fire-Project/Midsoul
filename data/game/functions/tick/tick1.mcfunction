schedule function game:tick/tick1 1t replace

function base:bossbar/tick1

execute unless score $initcheck data matches 51121 run function game:init

execute if score $state data matches 3 run function game:state/3/tick1