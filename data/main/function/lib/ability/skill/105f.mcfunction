title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.skill.over",fallback:"技能终止",color:"red"}," 🔁 ",{translate:"ms.skill.105",fallback:"雾影阴霾"}]
tag @s remove skill_on

# 进入擦刀
function main:lib/player/strike

# 重置冷却
scoreboard players set @s tick.skill 140000