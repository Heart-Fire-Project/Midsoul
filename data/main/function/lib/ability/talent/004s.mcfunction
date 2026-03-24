# 有标签 T004 代表已蓄能 1 次，有 T004s 代表已蓄能 2 次
scoreboard players add @s talent.004s 3
scoreboard players operation @s talent.004 = @s talent.004s
tag @s[scores={talent_1=4},tag=T004] add T004s
tag @s[scores={talent_2=4},tag=T004] add T004s
tag @s[tag=!T004] add T004