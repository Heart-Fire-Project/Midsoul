# 参与游戏
tellraw @s ["\n",{text:"» ",color:"aqua",bold:true},{translate:"ms.info.1.prepare",fallback:"你将参与本场游戏",color:"aqua"}]
gamemode spectator @s
tp @s 0 -5 0

# 状态刷新
clear @s
effect clear @s
effect give @s darkness infinite 0 true

tag @s add game_player