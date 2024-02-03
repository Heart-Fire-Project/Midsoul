# 切换状态时额外会消掉技能效果
effect clear @s
effect give @s saturation infinite 10 true
effect give @s[scores={state=1}] slowness infinite 49 true
effect give @s[scores={state=1}] darkness infinite 49 true
effect give @s[scores={state=1}] resistance infinite 49 true
effect give @s[scores={state=1}] jump_boost infinite 199 true

attribute @s generic.attack_damage base set 0
execute if score $state data matches 4 run attribute @s[team=soul,scores={state=0}] generic.movement_speed base set 0.12