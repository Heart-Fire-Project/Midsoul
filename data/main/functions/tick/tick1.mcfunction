schedule function main:tick/tick1 1t replace

execute unless score $initcheck data matches 51121 run function main:init
execute as @a at @s if block ~ ~-0.5 ~ farmland run effect give @s slow_falling 1 0 true
execute as @a at @s unless block ~ ~-0.5 ~ farmland run effect clear @s slow_falling

execute as @a unless score @s leave_game matches -2147483648..2147483647 run function main:new_player
execute as @a unless score @s leave_game matches 0 run function main:player_enter
execute as @a[x=-5,y=65,z=-5,dx=10,dy=10,dz=10] run function main:player_death

title @a[gamemode=creative,team=!admin] actionbar [{"text":"💠 ","color":"light_purple"},{"translate":"ms.info.admin","fallback":"你已自动进入 admin 队伍"}," 💠"]
team join admin @a[gamemode=creative,team=!admin]

spawnpoint @a 0 70 0

execute if score $state data matches 0 run function main:state/0/tick1
execute if score $state data matches 1 run function main:state/1/tick1
execute if score $state data matches 3 run function main:state/3/tick1
execute if score $state data matches 4 run function main:state/4/tick1
execute if score $state data matches 5 run function main:state/5/tick1
function debug:tick1