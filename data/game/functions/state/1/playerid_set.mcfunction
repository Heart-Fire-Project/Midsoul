# 重新给予序号
scoreboard players add $player_id temp 1
scoreboard players operation @a[team=prepare,scores={player_id=0},limit=1,sort=random] player_id = $player_id temp
execute if entity @a[team=prepare,scores={player_id=0}] run function game:state/1/playerid_set

# 进入下一步
schedule function game:state/1/give_kit 1s replace