title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.skill.over",fallback:"技能终止",color:"red"}," 🔁 ",{translate:"ms.skill.102",fallback:"灵力掌控"}]
tag @s remove skill_on

# 重置冷却
scoreboard players set @s tick.skill 120000