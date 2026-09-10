title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"red"}," » ",{translate:"ms.skill.106",fallback:"请君入阱"}]
playsound item.brush.brushing.gravel.complete player @a ~ ~ ~ 1 0.7
particle block{block_state:"smooth_stone_slab"} ~ ~0.2 ~ 0.2 0.1 0.2 0.7 7 force @a
scoreboard players add @s temp.skill 1

# 生成诡雷
function main:lib/ability/skill/106s
scoreboard players add @s skill.106 1

# 重置冷却
scoreboard players set @s tick.skill 80000