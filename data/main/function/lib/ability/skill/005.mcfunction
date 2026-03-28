title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"#5599FF"}," » ",{translate:"ms.skill.005",fallback:"锚定虚影"}]
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 首次施放
execute if score @s temp.skill matches 1 run function main:lib/ability/skill/005a

# 并非首次施放
execute if score @s temp.skill matches 2.. run function main:lib/ability/skill/005b

# 设置计时
scoreboard players set @s tick.skill -2400