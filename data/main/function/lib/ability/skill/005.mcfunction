title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"#5599FF"}," » ",{translate:"ms.skill.005",fallback:"锚定虚影"}]
playsound entity.ender_eye.launch player @a
scoreboard players add @s temp.skill 1

# 生成新锚点
summon marker ~ ~0.2 ~ {Tags:[S005n,S005,game_entity]}
scoreboard players operation @e[tag=S005n] entity_id = @s entity_id
tp @e[tag=S005n] @s

# 试图传送至上一个锚点，并在此之后去除新锚点的 tag
scoreboard players operation $entity_id temp = @s entity_id
execute as @e[tag=S005,tag=!S005n] if score @s entity_id = $entity_id temp run tag @s add S005t
tp @s @e[tag=S005t,limit=1]
execute if entity @e[tag=S005t] run particle falling_obsidian_tear ~ ~1 ~ 0.2 0.5 0.2 3 64 force @a
execute if entity @e[tag=S005t] run playsound entity.enderman.teleport player @s 0 1000000 0 120000
kill @e[tag=S005t]
tag @e remove S005n

# 重置冷却
scoreboard players set @s tick.skill 180000