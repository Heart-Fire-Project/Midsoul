tag @s add check_ability
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
playsound block.trial_spawner.open_shutter player @a 0 1000000 0 120000

# 总人数
scoreboard players set $player temp 0
execute as @a[tag=game_player] run scoreboard players add $player temp 1

# 已完成人数
scoreboard players set $check temp 0
execute as @a[tag=check_ability] run scoreboard players add $check temp 1

# 通报
tellraw @a [{text:"",color:"#33FFAA"},{text:"» ",bold:true},{translate:"ms.info.1.ability",fallback:"%s 已完成能力选择",with:[{selector:"@s"}]}," [",{score:{name:"$check",objective:"temp"},color:"white"},"/",{score:{name:"$player",objective:"temp"}},"]"]

# 检测是否可以结束
execute unless entity @a[tag=!check_ability,tag=game_player] run scoreboard players set $1_process tick.general 160