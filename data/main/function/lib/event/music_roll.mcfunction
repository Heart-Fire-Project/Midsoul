# 共计三首，反正大家都在听脚步
execute store result score $random temp2 run random value 1..3
execute if score $random temp2 matches 1 run scoreboard players set @s temp 11
execute if score $random temp2 matches 2 run scoreboard players set @s temp 12
execute if score $random temp2 matches 3 run scoreboard players set @s temp 13

execute if score @s temp = @s music run function main:lib/event/music_roll
execute unless score @s temp = @s music run function main:lib/event/music_apply