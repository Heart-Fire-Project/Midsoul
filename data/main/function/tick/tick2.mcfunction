schedule function main:tick/tick2 2t replace

# 隐身侦测
tag @a[nbt={active_effects:[{id:"minecraft:invisibility"}]}] add invisibility
execute as @a[tag=invisibility] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run tag @s remove invisibility

# 完整版粒子 | 他人视角
execute at @a[scores={extra.particle=1},tag=!invisibility,team=soul,gamemode=!spectator] run particle electric_spark ~ ~0.5 ~ 0.25 0.2 0.25 0 1 force @a[team=!guardian]
execute at @a[scores={extra.particle=2},tag=!invisibility,team=soul,gamemode=!spectator] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 0 1 force @a[team=!guardian]
execute at @a[scores={extra.particle=3},tag=!invisibility,team=soul,gamemode=!spectator] run particle ominous_spawning ~ ~0.3 ~ 0.15 0.1 0.15 0 1 force @a[team=!guardian]
execute at @a[scores={extra.particle=4},tag=!invisibility,team=soul,gamemode=!spectator] run particle wax_on ~ ~0.5 ~ 0.25 0.1 0.25 1 1 force @a[team=!guardian]
execute at @a[scores={extra.particle=5},tag=!invisibility,team=soul,gamemode=!spectator] run particle end_rod ~ ~0.5 ~ 0 0 0 0 1 force @a[team=!guardian]
execute at @a[scores={extra.particle=6},tag=!invisibility,team=soul,gamemode=!spectator] run particle witch ~ ~0.2 ~ 0.25 0.1 0.25 0 1 force @a[team=!guardian]
execute at @a[scores={extra.particle=7},tag=!invisibility,team=soul,gamemode=!spectator] run particle dust{color:[5,5,5],scale:1} ~ ~0.3 ~ 0.15 0.2 0.15 0 2 force @a[team=!guardian]
execute at @a[scores={extra.particle=8},tag=!invisibility,team=soul,gamemode=!spectator] run particle cherry_leaves ~ ~0.5 ~ 0.12 0.12 0.12 0 1 force @a[team=!guardian]
execute at @a[scores={extra.particle=9},tag=!invisibility,team=soul,gamemode=!spectator] run particle flame ~ ~0.3 ~ 0.15 0.2 0.15 0 1 force @a[team=!guardian]
execute at @a[scores={extra.particle=9},tag=!invisibility,team=soul,gamemode=!spectator] run particle soul_fire_flame ~ ~0.3 ~ 0.15 0.2 0.15 0 1 force @a[team=!guardian]
execute at @a[scores={extra.particle=1},tag=!invisibility,team=guardian,gamemode=!spectator] run particle electric_spark ~ ~0.5 ~ 0.25 0.2 0.25 0 1 force @a[team=!soul]
execute at @a[scores={extra.particle=2},tag=!invisibility,team=guardian,gamemode=!spectator] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 0 1 force @a[team=!soul]
execute at @a[scores={extra.particle=3},tag=!invisibility,team=guardian,gamemode=!spectator] run particle ominous_spawning ~ ~0.3 ~ 0.15 0.1 0.15 0 1 force @a[team=!soul]
execute at @a[scores={extra.particle=4},tag=!invisibility,team=guardian,gamemode=!spectator] run particle wax_on ~ ~0.5 ~ 0.25 0.1 0.25 1 1 force @a[team=!soul]
execute at @a[scores={extra.particle=5},tag=!invisibility,team=guardian,gamemode=!spectator] run particle end_rod ~ ~0.5 ~ 0 0 0 0 1 force @a[team=!soul]
execute at @a[scores={extra.particle=6},tag=!invisibility,team=guardian,gamemode=!spectator] run particle witch ~ ~0.2 ~ 0.25 0.1 0.25 0 1 force @a[team=!soul]
execute at @a[scores={extra.particle=7},tag=!invisibility,team=guardian,gamemode=!spectator] run particle dust{color:[5,5,5],scale:1} ~ ~0.3 ~ 0.15 0.2 0.15 0 2 force @a[team=!soul]
execute at @a[scores={extra.particle=8},tag=!invisibility,team=guardian,gamemode=!spectator] run particle cherry_leaves ~ ~0.5 ~ 0.12 0.12 0.12 0 1 force @a[team=!soul]
execute at @a[scores={extra.particle=9},tag=!invisibility,team=guardian,gamemode=!spectator] run particle flame ~ ~0.3 ~ 0.15 0.2 0.15 0 1 force @a[team=!soul]
execute at @a[scores={extra.particle=9},tag=!invisibility,team=guardian,gamemode=!spectator] run particle soul_fire_flame ~ ~0.3 ~ 0.15 0.2 0.15 0 1 force @a[team=!soul]
execute at @a[scores={extra.particle=1},tag=!invisibility,team=!guardian,team=!soul,team=!admin,gamemode=!spectator] run particle electric_spark ~ ~0.5 ~ 0.25 0.2 0.25 0 1 force @a
execute at @a[scores={extra.particle=2},tag=!invisibility,team=!guardian,team=!soul,team=!admin,gamemode=!spectator] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 0 1 force @a
execute at @a[scores={extra.particle=3},tag=!invisibility,team=!guardian,team=!soul,team=!admin,gamemode=!spectator] run particle ominous_spawning ~ ~0.3 ~ 0.15 0.1 0.15 0 1 force @a
execute at @a[scores={extra.particle=4},tag=!invisibility,team=!guardian,team=!soul,team=!admin,gamemode=!spectator] run particle wax_on ~ ~0.5 ~ 0.25 0.1 0.25 1 1 force @a
execute at @a[scores={extra.particle=5},tag=!invisibility,team=!guardian,team=!soul,team=!admin,gamemode=!spectator] run particle end_rod ~ ~0.5 ~ 0 0 0 0 1 force @a
execute at @a[scores={extra.particle=6},tag=!invisibility,team=!guardian,team=!soul,team=!admin,gamemode=!spectator] run particle witch ~ ~0.2 ~ 0.25 0.1 0.25 0 1 force @a
execute at @a[scores={extra.particle=7},tag=!invisibility,team=!guardian,team=!soul,team=!admin,gamemode=!spectator] run particle dust{color:[5,5,5],scale:1} ~ ~0.3 ~ 0.15 0.2 0.15 0 2 force @a
execute at @a[scores={extra.particle=8},tag=!invisibility,team=!guardian,team=!soul,team=!admin,gamemode=!spectator] run particle cherry_leaves ~ ~0.5 ~ 0.12 0.12 0.12 0 1 force @a
execute at @a[scores={extra.particle=9},tag=!invisibility,team=!guardian,team=!soul,team=!admin,gamemode=!spectator] run particle flame ~ ~0.3 ~ 0.15 0.2 0.15 0 1 force @a
execute at @a[scores={extra.particle=9},tag=!invisibility,team=!guardian,team=!soul,team=!admin,gamemode=!spectator] run particle soul_fire_flame ~ ~0.3 ~ 0.15 0.2 0.15 0 1 force @a

# 定向至其他函数
function debug:tick2
execute if score $state data matches 0 run function main:state/0/tick2
execute if score $state data matches 3..4 run function main:state/3/tick2

# 教程
execute as @a[tag=game_player] at @s if entity @e[tag=blue,distance=..3] run advancement grant @s only main:tutorial/interact/1
execute as @a[tag=game_player] at @s if entity @e[tag=gray,distance=..3] run advancement grant @s only main:tutorial/interact/3