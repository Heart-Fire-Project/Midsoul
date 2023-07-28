execute unless score $shard_goal data matches 12..23 run tellraw @s {"translate":"ms.setting.goal.max","fallback": " ⚠ 目标碎片量不能高于 24 个！","color": "red"}
execute unless score $shard_goal data matches 12..23 run playsound minecraft:block.note_block.didgeridoo player @s 0 1000000 0 1000000
execute if score $shard_goal data matches 12..23 run scoreboard players add $shard_goal data 1
execute if score $shard_goal data matches 12..24 run tellraw @a ["\n",{"selector":"@s"},{"text":" » ","color": "light_purple","bold": true},{"translate":"ms.setting.goal.notice","fallback":"调整目标碎片量为 ","color":"light_purple"},{"score":{"objective":"data","name":"$shard_goal","color":"aqua"}}]
function game:state/0/admin_settings