# 炸
playsound entity.generic.explode player @a
execute as @e[team=soul,scores={state=0},distance=..2] run damage @s 7 explosion
effect give @e[team=soul,scores={state=0},distance=..2] glowing 2 0

# 记
scoreboard players operation $value temp = @s entity_id
execute as @a[team=guardian,scores={skill=6,skill.106=1..}] if score @s entity_id = $value temp run scoreboard players remove @s skill.106 1

# 死
execute on passengers run kill @s
kill @s