# 数垂死灵魂数，若为 1+ 则仍有垂死灵魂在场
scoreboard players reset $num temp
execute as @a[team=soul,scores={state=1}] run scoreboard players add $num temp 1

# 展示标题
execute unless score $num temp matches 1.. run title @s[scores={setting.ability_status=1..}] actionbar [{translate:"ms.talent.over",fallback:"天赋终止",color:"aqua"}," 🔁 ",{translate:"ms.talent.003",fallback:"同生共死"}]
execute unless score $num temp matches 1.. run tag @s[scores={talent_1=3}] remove talent_1_on
execute unless score $num temp matches 1.. run tag @s[scores={talent_2=3}] remove talent_2_on