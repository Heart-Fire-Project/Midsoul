title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"#5599FF"}," » ",{translate:"ms.skill.004",fallback:"铤而走险"}]
playsound block.brewing_stand.brew player @a[distance=0.001..]
playsound block.brewing_stand.brew player @s 0 1000000 0 120000
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 初始化 | 快捷栏动画在持续效果里，粒子效果在判定里
tag @s remove S004a
tag @s remove S004b

# 反向跑团判定
execute store result score $random temp2 run random value 1..100
execute if score @s skill.004 < $random temp2 run function main:lib/ability/skill/004a
execute if score @s skill.004 >= $random temp2 run function main:lib/ability/skill/004b

# 设置计时
scoreboard players set @s tick.skill -12000

# 提升失败概率
scoreboard players add @s[scores={skill.004=..39}] skill.004 7