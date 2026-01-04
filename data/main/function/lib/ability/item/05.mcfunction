title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.item.active",fallback:"宝物施放",color:"#33FFAA"}," » ",{translate:"ms.item.5",fallback:"高效制冷"}]
playsound block.piston.extend player @a
particle snowflake ~ ~0.2 ~ 0.2 0.3 0.2 0.1 36 force @a
scoreboard players set @s item 0
scoreboard players add @s temp.item 1

# 生成
scoreboard players reset $value data
execute as @e[tag=I5] run scoreboard players add $value data 1
execute if score $value data matches 2.. run kill @e[tag=I5,limit=1,sort=arbitrary]
summon zombie ~ ~1 ~ {Tags:[I5,I5s,game_entity],Health:1,equipment:{head:{id:"player_head",count:1,components:{profile:{id:[I;-2028710611,-535870698,-1464817086,-1561423040],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk4Njc5NDUyMTg2OWU4MzI3ZWY4MWRiYzM1Yzk4NTZiYzQwNTFkZjk4ODhkODFlYWIyMTI0NDJiMTc2YTgyZiJ9fX0="}]}}}},Silent:1b,NoAI:1b}
effect give @e[tag=I5] invisibility infinite 0 true
tp @e[tag=I5s] @s
tag @e remove I5s