execute if score $state data matches 3 as @a[tag=skill_001_active] run function game:state/3/give_effect
execute if score $state data matches 4 as @a[tag=skill_001_active] run function game:state/4/give_effect
tag @a[tag=skill_001_active] remove skill_001_active