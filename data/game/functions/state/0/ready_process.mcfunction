# 在游戏锁定情况下不进行
# 等待转准备
execute if score $prepare data matches 5.. if score $start countdown matches 11.. as @a run playsound minecraft:entity.player.levelup player @s 0 1000000 0 1000000
execute if score $prepare data matches 5.. if score $start countdown matches 11.. run scoreboard players set $start countdown 10
execute if score $prepare data matches 5.. if score $start countdown matches 10.. run function game:state/0/bossbar

# 准备转等待
execute if score $prepare data matches ..4 if score $start countdown matches ..10 as @a run playsound minecraft:block.note_block.didgeridoo player @s 0 1000000 0 1000000
execute if score $prepare data matches ..4 if score $start countdown matches ..10 run function game:state/0/bossbar
execute if score $prepare data matches ..4 if score $start countdown matches ..10 run scoreboard players set $start countdown 7777777