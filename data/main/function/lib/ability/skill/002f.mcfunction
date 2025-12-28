title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.skill.over",fallback:"技能终止",color:"#5599FF"}," 🔁 ",{translate:"ms.skill.002",fallback:"灵灯熔铸"}]
tag @s remove skill_on

# 重置冷却 - 需提前处理
scoreboard players set @s tick.skill 150000
execute if entity @e[tag=gold] run scoreboard players add @s tick.skill 24000

# 给予效果 - 无需点灯
execute unless entity @e[tag=gold] run effect give @p[team=guardian] glowing 10 0
execute unless entity @e[tag=gold] run effect give @p[team=guardian] slowness 10 3
execute unless entity @e[tag=gold] at @p[team=guardian] run playsound block.anvil.land player @a ~ ~ ~ 0.35
execute unless entity @e[tag=gold] run playsound block.anvil.land player @s ~ ~ ~ 0.35

# 给予效果 - 需要点灯
execute if entity @e[tag=gold] run function main:lib/ability/base/interact/gold {limit:"1",sort:"nearest"}