# 统计数据加总
scoreboard players operation @s stat.collect += @s temp.collect
scoreboard players operation @s stat.heal += @s temp.heal
scoreboard players operation @s stat.dying += @s temp.dying
scoreboard players operation @s stat.open += @s temp.open
scoreboard players operation @s stat.hit += @s temp.hit
scoreboard players operation @s stat.down += @s temp.down
scoreboard players operation @s stat.skill += @s temp.skill
scoreboard players operation @s stat.talent += @s temp.talent
scoreboard players operation @s stat.item += @s temp.item
scoreboard players operation @s stat.time += @s temp.time

# 胜 / 平 / 输 / 总
scoreboard players add @s[tag=game_player] stat.play 1
scoreboard players add @s[team=guardian] stat.play_guar 1
scoreboard players add @s[team=revive] stat.play_soul 1
scoreboard players add @s[team=dead] stat.play_soul 1
scoreboard players add @s[tag=mvp] stat.mvp 1
execute if score $result data matches 1.. run scoreboard players add @s[team=revive] stat.win 1
execute if score $result data matches 1.. run scoreboard players add @s[team=dead] stat.win 1
execute if score $result data matches 1.. run scoreboard players add @s[team=revive] stat.win_soul 1
execute if score $result data matches 1.. run scoreboard players add @s[team=dead] stat.win_soul 1
execute if score $result data matches 1.. run scoreboard players add @s[team=guardian] stat.lose 1
execute if score $result data matches 0 run scoreboard players add @s[tag=game_player] stat.draw 1
execute if score $result data matches ..-1 run scoreboard players add @s[team=guardian] stat.win 1
execute if score $result data matches ..-1 run scoreboard players add @s[team=guardian] stat.win_guar 1
execute if score $result data matches ..-1 run scoreboard players add @s[team=revive] stat.lose 1
execute if score $result data matches ..-1 run scoreboard players add @s[team=dead] stat.lose 1