# 公告类
execute if score @s detect.interact matches 1 run scoreboard players set @s temp 1
execute if score @s detect.interact matches 2 run scoreboard players set @s temp 2
execute if score @s detect.interact matches 3 run scoreboard players set @s temp 3
execute if score @s detect.interact matches 1..99 run function main:lib/notice

# 图鉴类型
execute if score @s detect.interact matches 601 run function debug:sub/select {type:"index_page",num:"11"}
execute if score @s detect.interact matches 602 run function debug:sub/select {type:"index_page",num:"21"}
execute if score @s detect.interact matches 603 run function debug:sub/select {type:"index_page",num:"31"}
execute if score @s detect.interact matches 604 run function debug:sub/select {type:"index_page",num:"41"}
execute if score @s detect.interact matches 605 run function debug:sub/select {type:"index_page",num:"51"}
execute if score @s detect.interact matches 601..605 run function main:state/0/refresh/index

# 鸣谢类
execute if score @s detect.interact matches 901 run scoreboard players set @s temp 1
execute if score @s detect.interact matches 902 run scoreboard players set @s temp 2
execute if score @s detect.interact matches 903 run scoreboard players set @s temp 3
execute if score @s detect.interact matches 904 run scoreboard players set @s temp 4
execute if score @s detect.interact matches 905 run scoreboard players set @s temp 5
execute if score @s detect.interact matches 906 run scoreboard players set @s temp 6
execute if score @s detect.interact matches 907 run scoreboard players set @s temp 7
execute if score @s detect.interact matches 901..907 run function main:lib/credit

# 技能类
execute if score @s detect.interact matches 1001 run scoreboard players set @s skill 1
execute if score @s detect.interact matches 1002 run scoreboard players set @s skill 2
execute if score @s detect.interact matches 1003 run scoreboard players set @s skill 3
execute if score @s detect.interact matches 1004 run scoreboard players set @s skill 4
execute if score @s detect.interact matches 1005 run scoreboard players set @s skill 5
execute if score @s detect.interact matches 1001..1099 run function main:lib/ability/skill/info_s
execute if score @s detect.interact matches 1101 run scoreboard players set @s skill 1
execute if score @s detect.interact matches 1102 run scoreboard players set @s skill 2
execute if score @s detect.interact matches 1103 run scoreboard players set @s skill 3
execute if score @s detect.interact matches 1104 run scoreboard players set @s skill 4
execute if score @s detect.interact matches 1105 run scoreboard players set @s skill 5
execute if score @s detect.interact matches 1101..1199 run function main:lib/ability/skill/info_g

# 天赋类
execute if score @s detect.interact matches 2001 run scoreboard players set @s talent_1 1
execute if score @s detect.interact matches 2002 run scoreboard players set @s talent_1 2
execute if score @s detect.interact matches 2003 run scoreboard players set @s talent_1 3
execute if score @s detect.interact matches 2004 run scoreboard players set @s talent_1 4
execute if score @s detect.interact matches 2005 run scoreboard players set @s talent_1 5
execute if score @s detect.interact matches 2006 run scoreboard players set @s talent_1 6
execute if score @s detect.interact matches 2007 run scoreboard players set @s talent_1 7
execute if score @s detect.interact matches 2001..2099 run function main:lib/ability/talent/info_s {num:"1"}
execute if score @s detect.interact matches 2101 run scoreboard players set @s talent_1 1
execute if score @s detect.interact matches 2102 run scoreboard players set @s talent_1 2
execute if score @s detect.interact matches 2103 run scoreboard players set @s talent_1 3
execute if score @s detect.interact matches 2104 run scoreboard players set @s talent_1 4
execute if score @s detect.interact matches 2105 run scoreboard players set @s talent_1 5
execute if score @s detect.interact matches 2106 run scoreboard players set @s talent_1 6
execute if score @s detect.interact matches 2107 run scoreboard players set @s talent_1 7
execute if score @s detect.interact matches 2101..2199 run function main:lib/ability/talent/info_g {num:"1"}

# 宝物类
execute if score @s detect.interact matches 3001 run scoreboard players set @s relic 1
execute if score @s detect.interact matches 3002 run scoreboard players set @s relic 2
execute if score @s detect.interact matches 3003 run scoreboard players set @s relic 3
execute if score @s detect.interact matches 3004 run scoreboard players set @s relic 4
execute if score @s detect.interact matches 3005 run scoreboard players set @s relic 5
execute if score @s detect.interact matches 3006 run scoreboard players set @s relic 6
execute if score @s detect.interact matches 3007 run scoreboard players set @s relic 7
execute if score @s detect.interact matches 3100 run scoreboard players set @s relic -1
execute if score @s detect.interact matches 3001..3100 run function main:lib/ability/relic/info

execute if score @s detect.interact matches 1001..3999 run playsound item.book.page_turn block @s ~ ~ ~

# 粒子效果
execute if score @s detect.interact matches 4100 run scoreboard players set @s temp 0
execute if score @s detect.interact matches 4101 run scoreboard players set @s temp 1
execute if score @s detect.interact matches 4102 run scoreboard players set @s temp 2
execute if score @s detect.interact matches 4103 run scoreboard players set @s temp 3
execute if score @s detect.interact matches 4104 run scoreboard players set @s temp 4
execute if score @s detect.interact matches 4105 run scoreboard players set @s temp 5
execute if score @s detect.interact matches 4106 run scoreboard players set @s temp 6
execute if score @s detect.interact matches 4107 run scoreboard players set @s temp 7
execute if score @s detect.interact matches 4108 run scoreboard players set @s temp 8
execute if score @s detect.interact matches 4109 run scoreboard players set @s temp 9
execute if score @s detect.interact matches 4100..4199 run function main:state/0/extra/particle

# 武器样式
execute if score @s detect.interact matches 4200 run scoreboard players set @s temp 0
execute if score @s detect.interact matches 4201 run scoreboard players set @s temp 1
execute if score @s detect.interact matches 4202 run scoreboard players set @s temp 2
execute if score @s detect.interact matches 4203 run scoreboard players set @s temp 3
execute if score @s detect.interact matches 4204 run scoreboard players set @s temp 4
execute if score @s detect.interact matches 4200..4299 run function main:state/0/extra/weapon

# 饰品装配
execute if score @s detect.interact matches 4300 run scoreboard players set @s temp 0
execute if score @s detect.interact matches 4301 run scoreboard players set @s temp 1
execute if score @s detect.interact matches 4302 run scoreboard players set @s temp 2
execute if score @s detect.interact matches 4303 run scoreboard players set @s temp 3
execute if score @s detect.interact matches 4300..4399 run function main:state/0/extra/headset

# 文本套组
execute if score @s detect.interact matches 4400 run scoreboard players set @s temp 0
execute if score @s detect.interact matches 4401 run scoreboard players set @s temp 1
execute if score @s detect.interact matches 4402 run scoreboard players set @s temp 2
execute if score @s detect.interact matches 4403 run scoreboard players set @s temp 3
execute if score @s detect.interact matches 4400..4499 run function main:state/0/extra/text

# ???
execute if score @s detect.interact matches 7001 run advancement grant @s only main:hidden/1

scoreboard players set @s detect.interact 0