title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.skill.over",fallback:"技能终止",color:"red"}," 🔁 ",{translate:"ms.skill.105",fallback:"雾影阴霾"}]
tag @s remove skill_on

# 无法攻击
scoreboard players set @s[scores={tick.disable=..240}] tick.disable_max 240
scoreboard players set @s[scores={tick.disable=..240}] tick.disable 240

# 重置冷却
scoreboard players set @s tick.skill 140000