title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.skill.over",fallback:"技能终止",color:"red"}," 🔁 ",{translate:"ms.skill.107",fallback:"洞若观火"}]
playsound entity.creaking.deactivate player @a ~ ~ ~ 1 1.2
tag @s remove skill_on

# 清除瞑视之眼 | 若提前结束技能时需要
scoreboard players operation $value temp = @s entity_id
execute as @e[tag=S107] if score @s entity_id = $value temp at @s run playsound entity.creaking.deactivate player @a ~ ~ ~ 1 1.2
execute as @e[tag=S107] if score @s entity_id = $value temp run kill @s

# 重置冷却
scoreboard players set @s tick.skill 140000