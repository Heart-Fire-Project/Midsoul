# 数垂死灵魂数，若为 2+ 则已经触发过
scoreboard players reset $num temp
execute as @a[team=soul,scores={state=1}] run scoreboard players add $num temp 1

# 进行处理
execute if score $num temp matches 1 run title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.talent.active",fallback:"天赋触发",color:"aqua"}," » ",{translate:"ms.talent.003",fallback:"同生共死"}]
execute if score $num temp matches 1 run tag @s[scores={talent_1=3}] add talent_1_on
execute if score $num temp matches 1 run tag @s[scores={talent_2=3}] add talent_2_on
execute if score $num temp matches 1 run scoreboard players add @s temp.talent 1