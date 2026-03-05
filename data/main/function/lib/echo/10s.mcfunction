# 生成残影
$execute as @s[tag=!swimming,tag=!sneaking] run summon mannequin ~ ~0.2 ~ {Tags:[E10,E10_n,game_entity],profile:{name:"$(playername)"},Invulnerable:1b,immovable:1b,NoGravity:1b,active_effects:[{id:"invisibility",duration:4,show_particles:0b}],Team:"guardian"}
$execute as @s[tag=swimming] run summon mannequin ~ ~0.2 ~ {Tags:[E10,E10_n,game_entity],profile:{name:"$(playername)"},Invulnerable:1b,immovable:1b,NoGravity:1b,active_effects:[{id:"invisibility",duration:4,show_particles:0b}],pose:"swimming",Team:"guardian"}
$execute as @s[tag=!swimming,tag=sneaking] run summon mannequin ~ ~0.2 ~ {Tags:[E10,E10_n,game_entity],profile:{name:"$(playername)"},Invulnerable:1b,immovable:1b,NoGravity:1b,active_effects:[{id:"invisibility",duration:4,show_particles:0b}],pose:"crouching",Team:"guardian"}
scoreboard players set @n[tag=E10_n] tick.general 4
execute if entity @a[team=soul,distance=..24] run tag @n[tag=E10_n] add E10_s
item replace entity @n[tag=E10_n] weapon from entity @s weapon
tp @n[tag=E10_n] @s

tag @e[tag=E10_n] remove E10_n