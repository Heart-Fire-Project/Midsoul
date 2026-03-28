title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.skill.over",fallback:"技能终止",color:"#5599FF"}," 🔁 ",{translate:"ms.skill.002",fallback:"灵灯熔铸"}]
tag @s remove skill_on

# 给予效果 - 不点灯
execute if score @s skill.002 matches 0 run function main:lib/ability/skill/002b
execute if score @s skill.002 matches 1.. unless entity @e[tag=gold] run function main:lib/ability/skill/002b

# 给予效果 - 点灯
execute if score @s skill.002 matches 1.. if entity @e[tag=gold] run function main:lib/ability/skill/002a

# 重置冷却
scoreboard players set @s tick.skill 150000