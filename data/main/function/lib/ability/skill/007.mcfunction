title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"#5599FF"}," » ",{translate:"ms.skill.007",fallback:"同气连枝"}]
playsound block.chain.place player @a ~ ~ ~ 1 1.2
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 给予效果
effect give @s speed 12 0

# 选取谊链
tag @p[team=soul,scores={state=0},distance=0.001..16] add S007n
execute at @p[tag=S007n] run playsound block.chain.place player @a ~ ~ ~ 1 1.2
scoreboard players operation @s skill.007 = @p[tag=S007n] entity_id
tag @a remove S007n

# 设置计时
scoreboard players set @s tick.skill -24000