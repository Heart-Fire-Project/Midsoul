execute unless score $shard_goal data matches 10..23 run tellraw @s {"text": " ⚠ 你有点极端了","color": "red"}
execute unless score $shard_goal data matches 10..23 run playsound minecraft:block.note_block.didgeridoo player @s 0 1000000 0 1000000
execute if score $shard_goal data matches 10..23 run scoreboard players add $shard_goal data 1
execute unless score $shard_goal data matches 24 run tellraw @a ["\n",{"selector":"@s"},{"text": " » ","color": "light_purple","bold": true}, {"text": "调整目标碎片量为 ","color": "light_purple"},{"score":{"objective":"data","name":"$shard_goal"},"color": "aqua"}]
function game:state/0/admin_settings