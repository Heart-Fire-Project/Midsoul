title @s actionbar [{"translate":"ms.skill.over","fallback":"技能终止","color":"red"}," 🔁 ",{"translate":"ms.skill.102","fallback":"灵力掌控"}]

effect give @s[scores={skill_102=0..1}] speed 10 4
effect give @s[scores={skill_102=2}] speed 15 4
effect give @s[scores={skill_102=3}] speed 20 4
effect give @s[scores={skill_102=4}] speed 25 4
effect give @s[scores={skill_102=5}] speed 30 4

tag @s[scores={skill_102=1..5}] add double_damage
scoreboard players set @s[scores={skill_102=1}] double_damage 120
scoreboard players set @s[scores={skill_102=2}] double_damage 240
scoreboard players set @s[scores={skill_102=3}] double_damage 360
scoreboard players set @s[scores={skill_102=4}] double_damage 480
scoreboard players set @s[scores={skill_102=5}] double_damage 600

scoreboard players set @s skill_102 0
playsound block.respawn_anchor.set_spawn player @a

tag @s remove skill_on
scoreboard players set @s skill_tick 14000