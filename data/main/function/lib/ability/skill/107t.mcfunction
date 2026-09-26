# 以瞑视之眼本体为执行者
particle smoke ~ ~1.7 ~ 0.2 0.3 0.2 0.02 2 force @a
rotate @s facing entity @p[team=soul,distance=..12,scores={state=0}] feet
effect give @p[team=soul,distance=..12,scores={state=0}] glowing 1 0

# 生命倒计时
scoreboard players operation $value temp = @s entity_id
execute as @a[team=guardian,scores={state=1}] if score @s entity_id = $value temp run tag @s add S107a
execute unless entity @p[tag=S107a] run scoreboard players add @s tick.general 1
execute at @s[scores={tick.general=0..}] run playsound entity.creaking.deactivate player @a ~ ~ ~ 1 1.2
kill @s[scores={tick.general=0..}]
tag @a remove S107a