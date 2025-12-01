title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.skill.over",fallback:"技能终止",color:"#5599FF"}," 🔁 ",{translate:"ms.skill.002",fallback:"灵灯熔铸"}]
tag @s remove skill_on

# 重置冷却 - 需提前处理
scoreboard players set @s tick.skill 150000
execute if entity @a[team=soul,scores={state=1}] run scoreboard players add @s tick.skill 24000

# 给予效果
execute unless entity @a[team=soul,scores={state=1}] run effect give @p[team=guardian] glowing 10 0
execute unless entity @a[team=soul,scores={state=1}] run effect give @p[team=guardian] slowness 10 3
execute unless entity @a[team=soul,scores={state=1}] at @p[team=guardian] run playsound block.anvil.land player @a ~ ~ ~ 0.35
execute unless entity @a[team=soul,scores={state=1}] run playsound block.anvil.land player @s ~ ~ ~ 0.35
execute if entity @a[team=soul,scores={state=1}] run scoreboard players add @s temp.heal 1
execute if entity @a[team=soul,scores={state=1}] as @n[tag=gold,limit=1] at @s run function main:state/3/interaction/gold