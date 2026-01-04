title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.skill.over",fallback:"技能终止",color:"#5599FF"}," 🔁 ",{translate:"ms.skill.002",fallback:"灵灯熔铸"}]
tag @s remove skill_on

# 重置冷却 - 需提前处理
scoreboard players set @s tick.skill 150000
execute if entity @e[tag=gold] run scoreboard players add @s tick.skill 24000

# 给予效果 - 无需点灯
scoreboard players operation $value temp = @s entity_id
execute unless entity @e[tag=gold] run effect give @p[team=guardian] glowing 5 0
execute unless entity @e[tag=gold] at @p[team=guardian] run effect give @p[team=soul] speed 5 3
execute unless entity @e[tag=gold] at @p[team=guardian] run playsound block.vault.deactivate player @a ~ ~ ~ 1 0.5
execute unless entity @e[tag=gold] at @p[team=guardian] as @p[team=soul] at @s unless score @s entity_id = $value temp run playsound block.vault.activate player @a ~ ~ ~ 1 0.5
execute unless entity @e[tag=gold] run playsound block.vault.activate player @a ~ ~ ~ 1 0.5
execute unless entity @e[tag=gold] run particle trial_spawner_detection ~ ~0.1 ~ 0.2 0.2 0.2 0 32

# 给予效果 - 需要点灯
execute if entity @e[tag=gold] run function main:lib/ability/base/interact/gold {limit:"1",sort:"nearest"}
execute if entity @e[tag=gold] run particle wax_on ~ ~0.5 ~ 0.25 0.3 0.25 5 32 force @a