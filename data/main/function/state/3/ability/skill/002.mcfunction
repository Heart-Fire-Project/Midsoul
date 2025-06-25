title @s[scores={setting.ability_actionbar=2}] actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"#5599FF"}," » ",{"translate":"ms.skill.002","fallback":"灵灯之筑"}]
playsound block.amethyst_block.chime player @s ~ ~ ~ 1000000
particle wax_on ~ ~0.5 ~ 0.25 0.3 0.25 5 32 force @a
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 给予效果
effect give @s glowing 15 0
effect give @s slowness 15 3

# 设置计时
scoreboard players set @s tick.skill -3000