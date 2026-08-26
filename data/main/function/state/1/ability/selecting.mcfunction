tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "

# 技能
scoreboard players set @s[scores={detect.interact=5100}] skill 0
scoreboard players set @s[scores={detect.interact=5101}] skill 1
scoreboard players set @s[scores={detect.interact=5102}] skill 2
scoreboard players set @s[scores={detect.interact=5103}] skill 3
scoreboard players set @s[scores={detect.interact=5104}] skill 4
scoreboard players set @s[scores={detect.interact=5105}] skill 5
execute as @s[team=soul,scores={detect.interact=5101..5190}] run function main:lib/ability/skill/info_s
execute as @s[team=guardian,scores={detect.interact=5101..5190}] run function main:lib/ability/skill/info_g
scoreboard players set @s[scores={detect.interact=5191}] ui.skill 1
scoreboard players operation @s[team=soul,scores={detect.interact=5191..5199}] rec.skill_soul = @s ui.skill
scoreboard players operation @s[team=guardian,scores={detect.interact=5191..5199}] rec.skill_guar = @s ui.skill

# 一天赋
scoreboard players set @s[scores={detect.interact=5200}] temp 0
scoreboard players set @s[scores={detect.interact=5201}] temp 1
scoreboard players set @s[scores={detect.interact=5202}] temp 2
scoreboard players set @s[scores={detect.interact=5203}] temp 3
scoreboard players set @s[scores={detect.interact=5204}] temp 4
scoreboard players set @s[scores={detect.interact=5205}] temp 5
scoreboard players set @s[scores={detect.interact=5206}] temp 6
scoreboard players set @s[scores={detect.interact=5207}] temp 7
scoreboard players set @s[scores={detect.interact=5208}] temp 8
scoreboard players set @s[scores={detect.interact=5209}] temp 9
execute if score @s[scores={detect.interact=5201..5290}] temp = @s talent_2 run scoreboard players operation @s talent_1 >< @s talent_2
scoreboard players operation @s[scores={detect.interact=5200..5290}] talent_1 = @s temp
execute as @s[team=soul,scores={detect.interact=5201..5290}] run function main:lib/ability/talent/info_s {num:"1"}
execute as @s[team=guardian,scores={detect.interact=5201..5290}] run function main:lib/ability/talent/info_g {num:"1"}
scoreboard players set @s[scores={detect.interact=5291}] ui.talent_1 1
scoreboard players set @s[scores={detect.interact=5292}] ui.talent_1 2
scoreboard players operation @s[team=soul,scores={detect.interact=5291..5299}] rec.talent_1_soul = @s ui.talent_1
scoreboard players operation @s[team=guardian,scores={detect.interact=5291..5299}] rec.talent_1_guar = @s ui.talent_1

# 二天赋
scoreboard players set @s[scores={detect.interact=5300}] temp 0
scoreboard players set @s[scores={detect.interact=5301}] temp 1
scoreboard players set @s[scores={detect.interact=5302}] temp 2
scoreboard players set @s[scores={detect.interact=5303}] temp 3
scoreboard players set @s[scores={detect.interact=5304}] temp 4
scoreboard players set @s[scores={detect.interact=5305}] temp 5
scoreboard players set @s[scores={detect.interact=5306}] temp 6
scoreboard players set @s[scores={detect.interact=5307}] temp 7
scoreboard players set @s[scores={detect.interact=5308}] temp 8
scoreboard players set @s[scores={detect.interact=5309}] temp 9
execute if score @s[scores={detect.interact=5301..5390}] temp = @s talent_1 run scoreboard players operation @s talent_2 >< @s talent_1
scoreboard players operation @s[scores={detect.interact=5300..5390}] talent_2 = @s temp
execute as @s[team=soul,scores={detect.interact=5301..5390}] run function main:lib/ability/talent/info_s {num:"2"}
execute as @s[team=guardian,scores={detect.interact=5301..5390}] run function main:lib/ability/talent/info_g {num:"2"}
scoreboard players set @s[scores={detect.interact=5391}] ui.talent_2 1
scoreboard players set @s[scores={detect.interact=5392}] ui.talent_2 2
scoreboard players operation @s[team=soul,scores={detect.interact=5391..5399}] rec.talent_2_soul = @s ui.talent_2
scoreboard players operation @s[team=guardian,scores={detect.interact=5391..5399}] rec.talent_2_guar = @s ui.talent_2

# 锁定
execute as @s[scores={detect.interact=5401}] run function main:state/1/ability/check

# 音效
execute unless score @s detect.interact matches 5400..5401 run playsound ui.button.click player @s 0 1000000 0 120000
playsound block.vault.close_shutter player @s[scores={detect.interact=5400}] 0 1000000 0 120000
execute unless score @s detect.interact matches 5401 as @s[team=soul] run function main:state/1/ability/panel_s
execute unless score @s detect.interact matches 5401 as @s[team=guardian] run function main:state/1/ability/panel_g