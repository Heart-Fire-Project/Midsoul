title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"red"}," » ",{translate:"ms.skill.102",fallback:"灵力掌控"}]
playsound entity.illusioner.cast_spell player @s
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 设置计时
scoreboard players set @s tick.skill -24000
scoreboard players set $temp temp 240
execute unless score @s tick.enhance >= $temp temp run scoreboard players set @s tick.enhance 240

# 选择目标
tag @p[team=soul,scores={state=0}] add S102
scoreboard players operation @s skill.102 = @a[tag=S102] entity_id
tag @a remove S102