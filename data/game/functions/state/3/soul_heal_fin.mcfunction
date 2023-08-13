tag @r[tag=just_healed] add heal_damage
damage @a[tag=heal_damage,limit=1] 10 out_of_world
tag @a[tag=heal_damage] remove just_healed
tag @a[tag=heal_damage] remove just_healed
execute if entity @a[tag=just_healed,scores={health=11..}] run function game:state/3/soul_heal_fin