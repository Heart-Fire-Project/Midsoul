# 公告类
scoreboard players set @s[scores={detect.interact=1}] temp 1
scoreboard players set @s[scores={detect.interact=2}] temp 2
scoreboard players set @s[scores={detect.interact=3}] temp 3
scoreboard players set @s[scores={detect.interact=4}] temp 4
execute as @s[scores={detect.interact=1..99}] run function main:lib/notice

# 图鉴类型
execute as @s[scores={detect.interact=601}] run function debug:sub/select {type:"index_page",num:"11"}
execute as @s[scores={detect.interact=602}] run function debug:sub/select {type:"index_page",num:"21"}
execute as @s[scores={detect.interact=603}] run function debug:sub/select {type:"index_page",num:"31"}
execute as @s[scores={detect.interact=604}] run function debug:sub/select {type:"index_page",num:"41"}
execute as @s[scores={detect.interact=605}] run function debug:sub/select {type:"index_page",num:"51"}
execute as @s[scores={detect.interact=601..605}] run function main:state/0/refresh/index

# 鸣谢类
scoreboard players set @s[scores={detect.interact=901}] temp 1
scoreboard players set @s[scores={detect.interact=902}] temp 2
scoreboard players set @s[scores={detect.interact=903}] temp 3
scoreboard players set @s[scores={detect.interact=904}] temp 4
scoreboard players set @s[scores={detect.interact=905}] temp 5
scoreboard players set @s[scores={detect.interact=906}] temp 6
scoreboard players set @s[scores={detect.interact=907}] temp 7
execute as @s[scores={detect.interact=901..907}] run function main:lib/credit

# 技能类
scoreboard players set @s[scores={detect.interact=1001}] skill 1
scoreboard players set @s[scores={detect.interact=1002}] skill 2
scoreboard players set @s[scores={detect.interact=1003}] skill 3
scoreboard players set @s[scores={detect.interact=1004}] skill 4
scoreboard players set @s[scores={detect.interact=1005}] skill 5
scoreboard players set @s[scores={detect.interact=1006}] skill 6
scoreboard players set @s[scores={detect.interact=1007}] skill 7
execute as @s[scores={detect.interact=1001..1099}] run function main:lib/ability/skill/info_s
scoreboard players set @s[scores={detect.interact=1101}] skill 1
scoreboard players set @s[scores={detect.interact=1102}] skill 2
scoreboard players set @s[scores={detect.interact=1103}] skill 3
scoreboard players set @s[scores={detect.interact=1104}] skill 4
scoreboard players set @s[scores={detect.interact=1105}] skill 5
scoreboard players set @s[scores={detect.interact=1106}] skill 6
scoreboard players set @s[scores={detect.interact=1107}] skill 7
execute as @s[scores={detect.interact=1101..1199}] run function main:lib/ability/skill/info_g

# 天赋类
scoreboard players set @s[scores={detect.interact=2001}] talent_1 1
scoreboard players set @s[scores={detect.interact=2002}] talent_1 2
scoreboard players set @s[scores={detect.interact=2003}] talent_1 3
scoreboard players set @s[scores={detect.interact=2004}] talent_1 4
scoreboard players set @s[scores={detect.interact=2005}] talent_1 5
scoreboard players set @s[scores={detect.interact=2006}] talent_1 6
scoreboard players set @s[scores={detect.interact=2007}] talent_1 7
scoreboard players set @s[scores={detect.interact=2008}] talent_1 8
scoreboard players set @s[scores={detect.interact=2009}] talent_1 9
execute as @s[scores={detect.interact=2001..2099}] run function main:lib/ability/talent/info_s {num:"1"}
scoreboard players set @s[scores={detect.interact=2101}] talent_1 1
scoreboard players set @s[scores={detect.interact=2102}] talent_1 2
scoreboard players set @s[scores={detect.interact=2103}] talent_1 3
scoreboard players set @s[scores={detect.interact=2104}] talent_1 4
scoreboard players set @s[scores={detect.interact=2105}] talent_1 5
scoreboard players set @s[scores={detect.interact=2106}] talent_1 6
scoreboard players set @s[scores={detect.interact=2107}] talent_1 7
scoreboard players set @s[scores={detect.interact=2108}] talent_1 8
scoreboard players set @s[scores={detect.interact=2109}] talent_1 9
execute as @s[scores={detect.interact=2101..2199}] run function main:lib/ability/talent/info_g {num:"1"}

# 宝物类
scoreboard players set @s[scores={detect.interact=3001}] relic 1
scoreboard players set @s[scores={detect.interact=3002}] relic 2
scoreboard players set @s[scores={detect.interact=3003}] relic 3
scoreboard players set @s[scores={detect.interact=3004}] relic 4
scoreboard players set @s[scores={detect.interact=3005}] relic 5
scoreboard players set @s[scores={detect.interact=3006}] relic 6
scoreboard players set @s[scores={detect.interact=3007}] relic 7
scoreboard players set @s[scores={detect.interact=3008}] relic 8
scoreboard players set @s[scores={detect.interact=3100}] relic -1
execute as @s[scores={detect.interact=3001..3100}] run function main:lib/ability/relic/info

playsound item.book.page_turn block @s[scores={detect.interact=1001..3999}] ~ ~ ~

# 粒子效果
scoreboard players set @s[scores={detect.interact=4100}] temp 0
scoreboard players set @s[scores={detect.interact=4101}] temp 1
scoreboard players set @s[scores={detect.interact=4102}] temp 2
scoreboard players set @s[scores={detect.interact=4103}] temp 3
scoreboard players set @s[scores={detect.interact=4104}] temp 4
scoreboard players set @s[scores={detect.interact=4105}] temp 5
scoreboard players set @s[scores={detect.interact=4106}] temp 6
scoreboard players set @s[scores={detect.interact=4107}] temp 7
scoreboard players set @s[scores={detect.interact=4108}] temp 8
scoreboard players set @s[scores={detect.interact=4109}] temp 9
execute as @s[scores={detect.interact=4100..4199}] run function main:state/0/extra/particle

# 武器样式
scoreboard players set @s[scores={detect.interact=4200}] temp 0
scoreboard players set @s[scores={detect.interact=4201}] temp 1
scoreboard players set @s[scores={detect.interact=4202}] temp 2
scoreboard players set @s[scores={detect.interact=4203}] temp 3
scoreboard players set @s[scores={detect.interact=4204}] temp 4
execute as @s[scores={detect.interact=4200..4299}] run function main:state/0/extra/weapon

# 饰品装配
scoreboard players set @s[scores={detect.interact=4300}] temp 0
scoreboard players set @s[scores={detect.interact=4301}] temp 1
scoreboard players set @s[scores={detect.interact=4302}] temp 2
scoreboard players set @s[scores={detect.interact=4303}] temp 3
scoreboard players set @s[scores={detect.interact=4304}] temp 4
scoreboard players set @s[scores={detect.interact=4305}] temp 5
execute as @s[scores={detect.interact=4300..4399}] run function main:state/0/extra/headset

# 文本套组
scoreboard players set @s[scores={detect.interact=4400}] temp 0
scoreboard players set @s[scores={detect.interact=4401}] temp 1
scoreboard players set @s[scores={detect.interact=4402}] temp 2
scoreboard players set @s[scores={detect.interact=4403}] temp 3
execute as @s[scores={detect.interact=4400..4499}] run function main:state/0/extra/text

scoreboard players set @s detect.interact 0