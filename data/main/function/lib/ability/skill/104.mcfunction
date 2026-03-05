title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"red"}," » ",{translate:"ms.skill.104",fallback:"恶灵诅咒"}]
playsound entity.vex.charge player @a
particle trial_omen ~ ~0.3 ~ 0.2 0.3 0.2 1 12 force @a
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 施加诅咒
execute unless entity @e[tag=gray,tag=!cursed_gray,limit=1] run function main:lib/ability/skill/104a
tag @e[tag=gray,tag=!cursed_gray,limit=1] add cursed_gray

# 给予效果
scoreboard players reset $value temp
execute as @e[tag=cursed_gray] run scoreboard players add $value temp 1
execute if score $value temp matches 7.. run scoreboard players set $value temp 6
execute store result storage ms:temp num int 1 run scoreboard players get $value temp
function main:lib/ability/skill/104b with storage ms:temp

# 设置计时
scoreboard players set @s tick.skill -20000