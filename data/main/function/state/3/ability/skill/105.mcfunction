title @s[scores={setting.ability_actionbar=2}] actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"red"}," » ",{"translate":"ms.skill.105","fallback":"雾影阴霾"}]
playsound entity.creeper.primed player @a
particle campfire_signal_smoke ~ ~0.5 ~ 0.2 1 0.2 0 256
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 无法出伤在刷新物品栏中已有记载

# 给予效果
effect give @s speed 12 6
effect give @s invisibility 12 0

# 设置计时
scoreboard players set @s tick.skill -2400