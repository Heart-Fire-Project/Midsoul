tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

# 技能
execute if score @s detect.interact matches 5100 run scoreboard players set @s skill 0
execute if score @s detect.interact matches 5101 run scoreboard players set @s skill 1
execute if score @s detect.interact matches 5102 run scoreboard players set @s skill 2
execute if score @s detect.interact matches 5103 run scoreboard players set @s skill 3
execute if score @s detect.interact matches 5104 run scoreboard players set @s skill 4
execute if score @s detect.interact matches 5105 run scoreboard players set @s skill 5
execute if score @s[team=soul] detect.interact matches 5101..5199 run function main:lib/ability/skill/soul
execute if score @s[team=guardian] detect.interact matches 5101..5199 run function main:lib/ability/skill/guar

# 一天赋
execute if score @s detect.interact matches 5200 run scoreboard players set @s temp 0
execute if score @s detect.interact matches 5201 run scoreboard players set @s temp 1
execute if score @s detect.interact matches 5202 run scoreboard players set @s temp 2
execute if score @s detect.interact matches 5203 run scoreboard players set @s temp 3
execute if score @s detect.interact matches 5204 run scoreboard players set @s temp 4
execute if score @s detect.interact matches 5205 run scoreboard players set @s temp 5
execute if score @s detect.interact matches 5206 run scoreboard players set @s temp 6
execute if score @s detect.interact matches 5207 run scoreboard players set @s temp 7
execute if score @s detect.interact matches 5201..5299 if score @s temp = @s talent_2 run scoreboard players operation @s talent_1 >< @s talent_2
execute if score @s detect.interact matches 5200..5299 run scoreboard players operation @s talent_1 = @s temp
execute if score @s[team=soul] detect.interact matches 5201..5299 run function main:lib/ability/talent/soul {num:"1"}
execute if score @s[team=guardian] detect.interact matches 5201..5299 run function main:lib/ability/talent/guar {num:"1"}

# 二天赋
execute if score @s detect.interact matches 5300 run scoreboard players set @s temp 0
execute if score @s detect.interact matches 5301 run scoreboard players set @s temp 1
execute if score @s detect.interact matches 5302 run scoreboard players set @s temp 2
execute if score @s detect.interact matches 5303 run scoreboard players set @s temp 3
execute if score @s detect.interact matches 5304 run scoreboard players set @s temp 4
execute if score @s detect.interact matches 5305 run scoreboard players set @s temp 5
execute if score @s detect.interact matches 5306 run scoreboard players set @s temp 6
execute if score @s detect.interact matches 5307 run scoreboard players set @s temp 7
execute if score @s detect.interact matches 5301..5399 if score @s temp = @s talent_1 run scoreboard players operation @s talent_2 >< @s talent_1
execute if score @s detect.interact matches 5300..5399 run scoreboard players operation @s talent_2 = @s temp
execute if score @s[team=soul] detect.interact matches 5301..5399 run function main:lib/ability/talent/soul {num:"2"}
execute if score @s[team=guardian] detect.interact matches 5301..5399 run function main:lib/ability/talent/guar {num:"2"}

# 锁定
execute if score @s detect.interact matches 5400 run function main:state/1/ability/check

# 音效
execute unless score @s detect.interact matches 5400 run playsound ui.button.click player @s 0 1000000 0 120000
execute unless score @s detect.interact matches 5400 as @s[team=soul] run function main:state/1/ability/panel_s
execute unless score @s detect.interact matches 5400 as @s[team=guardian] run function main:state/1/ability/panel_g