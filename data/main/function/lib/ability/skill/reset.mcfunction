# 重置冷却时长
scoreboard players set @s[team=soul,scores={skill=1}] tick.skill 120000
scoreboard players set @s[team=soul,scores={skill=2}] tick.skill 150000
scoreboard players set @s[team=soul,scores={skill=3}] tick.skill 140000
scoreboard players set @s[team=soul,scores={skill=4}] tick.skill 140000
scoreboard players set @s[team=soul,scores={skill=5}] tick.skill 180000
scoreboard players set @s[team=soul,scores={skill=7}] tick.skill 140000
scoreboard players set @s[team=guardian,scores={skill=1}] tick.skill 140000
scoreboard players set @s[team=guardian,scores={skill=2}] tick.skill 120000
scoreboard players set @s[team=guardian,scores={skill=3}] tick.skill 140000
scoreboard players set @s[team=guardian,scores={skill=4}] tick.skill 120000
scoreboard players set @s[team=guardian,scores={skill=5}] tick.skill 140000
scoreboard players set @s[team=guardian,scores={skill=6}] tick.skill 080000

scoreboard players set @s[team=soul,scores={skill=6}] tick.skill 20000
scoreboard players operation @s[team=soul,scores={skill=6}] tick.skill *= @s temp.skill
scoreboard players add @s[team=soul,scores={skill=6}] tick.skill 140000
scoreboard players set @s[team=soul,scores={skill=6,tick.skill=240001..}] tick.skill 240000