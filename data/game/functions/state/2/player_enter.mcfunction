execute as @a[team=alive] run function game:state/2/soul_enter
execute as @a[team=protect] run function game:state/2/protect_enter
execute as @a[team=unready] run function game:state/2/spec_enter

scoreboard players set $real_start countdown 13

kill @e[tag=game_entity]