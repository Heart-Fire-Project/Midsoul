title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"red"}," » ",{translate:"ms.skill.101",fallback:"虔诚力场"}]
playsound block.enchantment_table.use player @a ~ ~ ~ 1 1.5
particle totem_of_undying ~ ~0.4 ~ 0.2 0.1 0.2 0.1 32 force @a
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 给予效果
effect give @s speed 7 1
effect give @p[team=soul,scores={state=0}] glowing 14 0
effect give @a[team=soul,scores={state=0}] glowing 7 0

# 设置计时
scoreboard players set @s tick.skill -14000