# 开始倒计时
# 又称减分核心
execute unless score $game_start countdown matches 0..12 run scoreboard players set $game_start countdown 13
execute if score $game_start countdown matches 0..13 run scoreboard players remove $game_start countdown 1
execute if score $game_start countdown matches ..-1 run scoreboard players reset $game_start countdown