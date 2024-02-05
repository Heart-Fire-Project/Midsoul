title @s actionbar [{"translate":"ms.skill.over","fallback":"技能终止","color":"#5599FF"}," 🔁 ",{"translate":"ms.skill.002","fallback":"灵灯之筑"}]

execute unless entity @a[team=soul,scores={state=1}] run effect give @a[team=protect] glowing 15 0
execute unless entity @a[team=soul,scores={state=1}] run effect give @a[team=protect] slowness 15 4
execute unless entity @a[team=soul,scores={state=1}] at @a[team=protect] run playsound block.anvil.land player @a
execute if entity @a[team=soul,scores={state=1}] run scoreboard players add @s stat_temp_heal 1
execute as @r[team=soul,scores={state=1}] run kill @e[tag=gold,limit=1]
execute as @r[team=soul,scores={state=1}] run function main:state/3/attack/heal

tag @s remove skill_on
scoreboard players set @s skill_tick 15000