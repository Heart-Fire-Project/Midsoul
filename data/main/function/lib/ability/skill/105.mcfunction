title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"red"}," » ",{translate:"ms.skill.105",fallback:"雾影阴霾"}]
playsound entity.creeper.primed player @a
particle campfire_signal_smoke ~ ~0.5 ~ 0.2 1 0.2 0.3 128 force @a
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 无法出伤在刷新物品栏中已有记载

# 清空计数
scoreboard players set @s skill.105 0

# 给予效果
effect give @s speed 12 1

# 设置计时
scoreboard players set @s tick.skill -24000