# 根据实体 A 的当前视角计算并给予实体 B 动量 | 需以实体 A 为执行上下文
# 需要参数：selector(实体 B) amplifier(动量倍率)

summon marker 0.0 0 0.0 {Tags:[r7s_temp]}
data modify entity @n[tag=r7s_temp] Rotation set from entity @s Rotation
$execute as @n[tag=r7s_temp] at @s run tp @s ^ ^ ^$(amplifier)
$execute as $(selector) run data modify entity @s Motion set from entity @n[tag=r7s_temp] Pos
kill @e[tag=r7s_temp]