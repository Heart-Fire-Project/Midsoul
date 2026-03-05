# 设置位移
scoreboard players remove @e[tag=purple_progress,scores={tick.general=1..},distance=..2] tick.general 1
execute as @e[tag=purple_progress,scores={state=0,tick.general=0},distance=..2] if entity @a[gamemode=adventure,distance=..1] run data merge entity @s {transformation:{translation:[0f,0.8f,0f]},interpolation_duration:3}
execute as @e[tag=purple_progress,scores={state=0,tick.general=0},distance=..2] if entity @a[gamemode=adventure,distance=..1] run scoreboard players set @s tick.general 100
execute as @e[tag=purple_progress,scores={state=0,tick.general=100},distance=..2] if entity @a[gamemode=adventure,distance=..1] run scoreboard players set @s state 1
execute as @e[tag=purple_progress,scores={state=1,tick.general=0},distance=..2] unless entity @a[gamemode=adventure,distance=..1] run data merge entity @s {transformation:{translation:[0f,0f,0f]},interpolation_duration:3}
execute as @e[tag=purple_progress,scores={state=1,tick.general=0},distance=..2] unless entity @a[gamemode=adventure,distance=..1] run scoreboard players set @s tick.general 100
execute as @e[tag=purple_progress,scores={state=1,tick.general=100},distance=..2] unless entity @a[gamemode=adventure,distance=..1] run scoreboard players set @s state 0
scoreboard players set @e[tag=purple_progress,scores={tick.general=100},distance=..2] tick.general 3

# 计算百分比
function base:caculate/percent {valueA:"@s",valueB:"#100000",sourceA:"tick.general",sourceB:"data"}
execute if score @s[scores={state=0}] tick.general matches ..99999 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {text:["◇ ",{score:{name:"$front",objective:"temp2"}},"% ◇"],interpolation_duration:0}
execute if score @s[scores={state=1}] tick.general matches ..99999 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {text:["◆ ",{score:{name:"$front",objective:"temp2"}},"% ◇"],interpolation_duration:0}
execute if score @s[scores={state=2}] tick.general matches ..99999 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {text:["◆ ",{score:{name:"$front",objective:"temp2"}},"% ◆"],interpolation_duration:0}
execute if score @s tick.general matches 100000.. run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {text:"◆ 100% ◆",interpolation_duration:0}

# 设置背景颜色
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 00 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2135218406}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 01 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2135152613}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 02 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2135021283}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 03 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2134955490}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 04 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2134889441}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 05 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2134758111}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 06 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2134692318}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 07 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2134626525}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 08 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2134495195}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 09 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2134429402}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 10 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2134363609}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 11 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2134232279}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 12 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2134166230}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 13 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2134100437}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 14 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2134034644}
execute if entity @s[tag=!charging_purple,tag=!open_purple] if score $value temp matches 15 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2133903314}
execute if entity @s[tag=charging_purple] if score $value temp matches 00 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2140698203}
execute if entity @s[tag=charging_purple] if score $value temp matches 01 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2140632409}
execute if entity @s[tag=charging_purple] if score $value temp matches 02 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2140500824}
execute if entity @s[tag=charging_purple] if score $value temp matches 03 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2140435030}
execute if entity @s[tag=charging_purple] if score $value temp matches 04 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2140303444}
execute if entity @s[tag=charging_purple] if score $value temp matches 05 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2140237651}
execute if entity @s[tag=charging_purple] if score $value temp matches 06 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2140171601}
execute if entity @s[tag=charging_purple] if score $value temp matches 07 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2140040271}
execute if entity @s[tag=charging_purple] if score $value temp matches 08 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2139974222}
execute if entity @s[tag=charging_purple] if score $value temp matches 09 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2139842892}
execute if entity @s[tag=charging_purple] if score $value temp matches 10 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2139776842}
execute if entity @s[tag=charging_purple] if score $value temp matches 11 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2139711049}
execute if entity @s[tag=charging_purple] if score $value temp matches 12 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2139579463}
execute if entity @s[tag=charging_purple] if score $value temp matches 13 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2139513669}
execute if entity @s[tag=charging_purple] if score $value temp matches 14 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2139447876}
execute if entity @s[tag=charging_purple] if score $value temp matches 15 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2139316290}
execute if entity @s[tag=open_purple] if score $value temp matches 00 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2143190422}
execute if entity @s[tag=open_purple] if score $value temp matches 01 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2143124372}
execute if entity @s[tag=open_purple] if score $value temp matches 02 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2143123859}
execute if entity @s[tag=open_purple] if score $value temp matches 03 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2143057553}
execute if entity @s[tag=open_purple] if score $value temp matches 04 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2143057040}
execute if entity @s[tag=open_purple] if score $value temp matches 05 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2142990990}
execute if entity @s[tag=open_purple] if score $value temp matches 06 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2142924941}
execute if entity @s[tag=open_purple] if score $value temp matches 07 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2142924427}
execute if entity @s[tag=open_purple] if score $value temp matches 08 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2142858122}
execute if entity @s[tag=open_purple] if score $value temp matches 09 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2142857608}
execute if entity @s[tag=open_purple] if score $value temp matches 10 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2142791559}
execute if entity @s[tag=open_purple] if score $value temp matches 11 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2142725509}
execute if entity @s[tag=open_purple] if score $value temp matches 12 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2142724996}
execute if entity @s[tag=open_purple] if score $value temp matches 13 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2142658690}
execute if entity @s[tag=open_purple] if score $value temp matches 14 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2142658177}
execute if entity @s[tag=open_purple] if score $value temp matches 15 run data merge entity @n[tag=purple_progress,scores={tick.general=0},distance=..2] {background:-2142592127}