tag @a[tag=skill_102_active] add skill_102_double

execute if score $skill_102 temp matches 1 run effect give @a[tag=skill_102_active] speed 5 4
execute if score $skill_102 temp matches 2 run effect give @a[tag=skill_102_active] speed 10 4
execute if score $skill_102 temp matches 3 run effect give @a[tag=skill_102_active] speed 15 4
execute if score $skill_102 temp matches 4 run effect give @a[tag=skill_102_active] speed 20 4
execute if score $skill_102 temp matches 5 run effect give @a[tag=skill_102_active] speed 25 4

execute if score $skill_102 temp matches 1 run schedule function game:state/3/skill/skill_102_d 5s replace
execute if score $skill_102 temp matches 2 run schedule function game:state/3/skill/skill_102_d 10s replace
execute if score $skill_102 temp matches 3 run schedule function game:state/3/skill/skill_102_d 15s replace
execute if score $skill_102 temp matches 4 run schedule function game:state/3/skill/skill_102_d 20s replace
execute if score $skill_102 temp matches 5 run schedule function game:state/3/skill/skill_102_d 25s replace

playsound block.respawn_anchor.set_spawn player @a[tag=skill_102_active] 0 1000000 0 1000000
tag @a[tag=skill_102_active] remove skill_102_active