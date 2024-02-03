title @s actionbar [{"translate":"ms.skill.over","fallback":"技能终止","color":"red"}," 🔁 ",{"translate":"ms.skill.105","fallback":"残影迷踪"}]
playsound minecraft:entity.player.attack.sweep player @a
particle minecraft:sweep_attack ~ ~1 ~ 0.7 0.3 0.7 1 16

execute as @s run function main:state/3/attack/hit
execute unless entity @a[team=soul,distance=..2] run scoreboard players remove @s stat_temp_hit 1
execute as @a[team=soul,distance=..2] run damage @s 10

tag @s remove skill_on
scoreboard players set @s skill_tick 15000