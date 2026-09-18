title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.skill.over",fallback:"技能终止",color:"#5599FF"}," 🔁 ",{translate:"ms.skill.007",fallback:"同气连枝"}]
tag @s remove skill_on

# 解除谊链
scoreboard players reset @s skill.007

# 重置冷却
scoreboard players set @s tick.skill 140000