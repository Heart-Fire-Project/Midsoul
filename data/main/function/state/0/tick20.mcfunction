# 背景音乐处理
scoreboard players remove @a tick.music 1
execute as @a[scores={tick.music=..-1}] run function main:state/0/music_roll

# 不知道为什么冒险模式也能摘的浆果
execute unless block 12 23 30 cave_vines_plant[berries=true] run setblock 12 23 30 cave_vines_plant[berries=true]
execute unless block 11 22 30 cave_vines_plant[berries=true] run setblock 11 22 30 cave_vines_plant[berries=true]
execute unless block 10 21 30 cave_vines[berries=true] run setblock 10 21 30 cave_vines[berries=true]
execute unless block 9 23 30 cave_vines_plant[berries=true] run setblock 9 23 30 cave_vines_plant[berries=true]
execute unless block 8 21 30 cave_vines[berries=true] run setblock 8 21 30 cave_vines[berries=true]
execute unless block 7 22 30 cave_vines_plant[berries=true] run setblock 7 22 30 cave_vines_plant[berries=true]
execute unless block 6 23 30 cave_vines_plant[berries=true] run setblock 6 23 30 cave_vines_plant[berries=true]
execute unless block 5 21 30 cave_vines[berries=true] run setblock 5 21 30 cave_vines[berries=true]

# 开始游戏倒计时
execute if data storage ms:setting {game_lock:true} run scoreboard players set $0_start tick.general 21
execute if score $0_start tick.general matches 1..20 run scoreboard players remove $0_start tick.general 1
execute if score $0_start tick.general matches 10 run tellraw @a[team=spectator] [{text:"\n» ",color:"aqua",bold:true},{translate:"ms.info.0.prepare",fallback:"游戏即将开始！选中物品栏最后一格的物品并按下 [%s] 来参与游戏！",with:[{keybind:"key.swapOffhand"}],bold:false}]
execute if score $0_start tick.general matches 10 run playsound block.note_block.chime player @a[team=spectator] 0 1000000 0 120000
execute if score $prepare data matches 11.. if score $0_start tick.general matches 5 run tellraw @a [{text:"\n» ",color:"#33FF33",bold:true},{translate:"ms.info.0.overload",fallback:"人数已超限！将随机选择 10 人开始游戏",bold:false}]
execute if score $prepare data matches 11.. if score $0_start tick.general matches 5 run playsound block.amethyst_block.resonate player @a 0 1000000 0 120000
execute if score $0_start tick.general matches 1..4 run playsound entity.arrow.hit_player player @a 0 1000000 0 120000 0.5
execute if score $0_start tick.general matches 0 run playsound entity.arrow.hit_player player @a 0 1000000 0 120000
execute if score $0_start tick.general matches 0 run function main:state/1/enter