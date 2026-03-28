# 生成残影
$execute as @s[tag=!swimming,tag=!sneaking] run summon mannequin ~ ~0.2 ~ {Tags:[E10,E10n,game_entity],profile:{name:"$(playername)"},Invulnerable:1b,immovable:1b,NoGravity:1b,active_effects:[{id:"invisibility",duration:4,show_particles:0b}],Team:"guardian"}
$execute as @s[tag=swimming] run summon mannequin ~ ~0.2 ~ {Tags:[E10,E10n,game_entity],profile:{name:"$(playername)"},Invulnerable:1b,immovable:1b,NoGravity:1b,active_effects:[{id:"invisibility",duration:4,show_particles:0b}],pose:"swimming",Team:"guardian"}
$execute as @s[tag=!swimming,tag=sneaking] run summon mannequin ~ ~0.2 ~ {Tags:[E10,E10n,game_entity],profile:{name:"$(playername)"},Invulnerable:1b,immovable:1b,NoGravity:1b,active_effects:[{id:"invisibility",duration:4,show_particles:0b}],pose:"crouching",Team:"guardian"}
scoreboard players set @n[tag=E10n] tick.general 4
execute if entity @a[team=soul,distance=..12] run tag @n[tag=E10n] add E10s
item replace entity @n[tag=E10n] weapon from entity @s weapon
tp @n[tag=E10n] @s

tag @e[tag=E10n] remove E10n