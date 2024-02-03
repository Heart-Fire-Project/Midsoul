schedule function main:tick/tick2 2t replace

function debug:tick2
execute if score $state data matches 0 run function main:state/0/tick2
execute if score $state data matches 3..4 run function main:state/3/tick2