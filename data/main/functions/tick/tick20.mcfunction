schedule function main:tick/tick20 20t replace

execute if score $state data matches 0 run function main:state/0/tick20 with storage ms:mode
execute if score $state data matches 2 run function main:state/2/tick20
execute if score $state data matches 3..4 run function main:state/3/tick20