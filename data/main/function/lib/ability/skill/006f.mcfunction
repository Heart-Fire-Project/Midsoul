title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.over",fallback:"技能终止",color:"#5599FF"}," » ",{translate:"ms.skill.006",fallback:"济困扶危"}]
tag @s remove skill_on

# 计算本次冷却并重置
scoreboard players set @s tick.skill 20000
scoreboard players operation @s tick.skill *= @s temp.skill
scoreboard players add @s tick.skill 140000
scoreboard players set @s[scores={tick.skill=240001..}] tick.skill 240000