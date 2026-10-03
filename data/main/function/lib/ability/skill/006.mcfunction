title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"#5599FF"}," » ",{translate:"ms.skill.006",fallback:"济困扶危"}]
playsound entity.villager.celebrate player @a ~ ~ ~ 3 1.2
particle happy_villager ~2.000 ~0.3 ~0.000 0 0 0 0 1 force @a
particle happy_villager ~1.970 ~0.3 ~0.347 0 0 0 0 1 force @a
particle happy_villager ~1.879 ~0.3 ~0.684 0 0 0 0 1 force @a
particle happy_villager ~1.732 ~0.3 ~1.000 0 0 0 0 1 force @a
particle happy_villager ~1.532 ~0.3 ~1.286 0 0 0 0 1 force @a
particle happy_villager ~1.286 ~0.3 ~1.532 0 0 0 0 1 force @a
particle happy_villager ~1.000 ~0.3 ~1.732 0 0 0 0 1 force @a
particle happy_villager ~0.684 ~0.3 ~1.879 0 0 0 0 1 force @a
particle happy_villager ~0.347 ~0.3 ~1.970 0 0 0 0 1 force @a
particle happy_villager ~0.000 ~0.3 ~2.000 0 0 0 0 1 force @a
particle happy_villager ~-0.347 ~0.3 ~1.970 0 0 0 0 1 force @a
particle happy_villager ~-0.684 ~0.3 ~1.879 0 0 0 0 1 force @a
particle happy_villager ~-1.000 ~0.3 ~1.732 0 0 0 0 1 force @a
particle happy_villager ~-1.286 ~0.3 ~1.532 0 0 0 0 1 force @a
particle happy_villager ~-1.532 ~0.3 ~1.286 0 0 0 0 1 force @a
particle happy_villager ~-1.732 ~0.3 ~1.000 0 0 0 0 1 force @a
particle happy_villager ~-1.879 ~0.3 ~0.684 0 0 0 0 1 force @a
particle happy_villager ~-1.970 ~0.3 ~0.347 0 0 0 0 1 force @a
particle happy_villager ~-2.000 ~0.3 ~0.000 0 0 0 0 1 force @a
particle happy_villager ~-1.970 ~0.3 ~-0.347 0 0 0 0 1 force @a
particle happy_villager ~-1.879 ~0.3 ~-0.684 0 0 0 0 1 force @a
particle happy_villager ~-1.732 ~0.3 ~-1.000 0 0 0 0 1 force @a
particle happy_villager ~-1.532 ~0.3 ~-1.286 0 0 0 0 1 force @a
particle happy_villager ~-1.286 ~0.3 ~-1.532 0 0 0 0 1 force @a
particle happy_villager ~-1.000 ~0.3 ~-1.732 0 0 0 0 1 force @a
particle happy_villager ~-0.684 ~0.3 ~-1.879 0 0 0 0 1 force @a
particle happy_villager ~-0.347 ~0.3 ~-1.970 0 0 0 0 1 force @a
particle happy_villager ~0.000 ~0.3 ~-2.000 0 0 0 0 1 force @a
particle happy_villager ~0.347 ~0.3 ~-1.970 0 0 0 0 1 force @a
particle happy_villager ~0.684 ~0.3 ~-1.879 0 0 0 0 1 force @a
particle happy_villager ~1.000 ~0.3 ~-1.732 0 0 0 0 1 force @a
particle happy_villager ~1.286 ~0.3 ~-1.532 0 0 0 0 1 force @a
particle happy_villager ~1.532 ~0.3 ~-1.286 0 0 0 0 1 force @a
particle happy_villager ~1.732 ~0.3 ~-1.000 0 0 0 0 1 force @a
particle happy_villager ~1.879 ~0.3 ~-0.684 0 0 0 0 1 force @a
particle happy_villager ~1.970 ~0.3 ~-0.347 0 0 0 0 1 force @a
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 选定目标
scoreboard players set $value temp 1000000
scoreboard players operation $value temp < @a[team=soul,scores={state=0},distance=..2] health
execute as @a[team=soul,scores={state=0},distance=..2] if score @s health = $value temp run tag @s add S006t
tag @r[tag=S006t] add S006

# 给予效果并去除标签
execute at @a[tag=S006] run particle happy_villager ~ ~0.3 ~ 0.2 0.3 0.2 1 14 force @a
execute at @a[tag=S006] run particle heart ~ ~2 ~ 0.1 0 0.1 1 1 force @a
effect give @a[tag=S006] absorption 7 0
effect give @a[tag=S006] regeneration 15 0
tag @a remove S006t
tag @a remove S006

# 设置计时
scoreboard players set @s tick.skill -14000