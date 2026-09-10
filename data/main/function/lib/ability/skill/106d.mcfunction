# 拆
particle block{block_state:"smooth_stone_slab"} ~ ~0.2 ~ 0.2 0.1 0.2 0.7 7 force @a
playsound block.iron_trapdoor.open player @a

# 记
scoreboard players operation $value temp = @s entity_id
execute as @a[team=guardian,scores={skill=6,skill.106=1..}] if score @s entity_id = $value temp run scoreboard players remove @s skill.106 1

# 死
execute on passengers run kill @s
kill @s