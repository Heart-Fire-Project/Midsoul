title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"red"}," » ",{translate:"ms.skill.105",fallback:"雾影阴霾"}]
particle cloud ~ ~0.3 ~ 0.2 0.3 0.2 0.1 48 force @a
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 清空计数
scoreboard players set @s skill.105 -1

# 给予效果
effect give @s speed 12 1
function main:lib/ability/skill/105a

# 设置计时
scoreboard players set @s tick.skill -24000