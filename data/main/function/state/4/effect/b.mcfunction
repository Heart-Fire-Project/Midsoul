# 不会消除技能效果
attribute @s[team=soul,scores={state=0}] movement_speed base set 0.12
attribute @s[team=guardian,scores={state=0}] movement_speed base set 0.16

effect give @a[team=soul,scores={state=0}] glowing infinite 6 true

attribute @s[scores={talent_1=5},team=soul] sneaking_speed modifier add ms:t005 1.0 add_multiplied_base
attribute @s[scores={talent_2=5},team=soul] sneaking_speed modifier add ms:t005 1.0 add_multiplied_base

execute if score $echo data matches 5 run attribute @s[team=soul] scale modifier add ms:echo -0.3 add_multiplied_base
execute if score $echo data matches 6 run attribute @s[tag=game_player] movement_speed modifier add ms:echo 1 add_multiplied_base