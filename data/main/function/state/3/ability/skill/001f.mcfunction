title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.skill.over",fallback:"技能终止",color:"#5599FF"}," 🔁 ",{translate:"ms.skill.001",fallback:"幻影迷踪"}]
tag @s remove skill_on

# 重置冷却
scoreboard players set @s tick.skill 120000