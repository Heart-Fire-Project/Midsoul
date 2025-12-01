# 至少比出金概率大
execute store result score $random temp2 run random value 1..100
execute if score $random temp2 matches 1 run scoreboard players set @s temp 0
execute if score $random temp2 matches 2..12 run scoreboard players set @s temp 1
execute if score $random temp2 matches 13..23 run scoreboard players set @s temp 2
execute if score $random temp2 matches 24..34 run scoreboard players set @s temp 3
execute if score $random temp2 matches 35..45 run scoreboard players set @s temp 4
execute if score $random temp2 matches 46..56 run scoreboard players set @s temp 5
execute if score $random temp2 matches 57..67 run scoreboard players set @s temp 6
execute if score $random temp2 matches 68..78 run scoreboard players set @s temp 7
execute if score $random temp2 matches 79..89 run scoreboard players set @s temp 8
execute if score $random temp2 matches 90..100 run scoreboard players set @s temp 9

# 我们没有单曲循环功能
execute if score @s temp = @s music run function main:state/0/music_roll
execute unless score @s temp = @s music run function main:state/0/music_apply