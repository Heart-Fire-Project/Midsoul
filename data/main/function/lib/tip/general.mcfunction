playsound item.book.page_turn player @a[tag=game_player,scores={setting.ingame_tip=1}] 0 1000000 0 1000000
execute as @a[tag=game_player,team=soul,scores={setting.ingame_tip=1}] run function main:lib/tip/soul
execute as @a[tag=game_player,team=guardian,scores={setting.ingame_tip=1}] run function main:lib/tip/guar

# 每 4~7 分钟触发一次提示
function base:random {max:"240",min:"420"}
scoreboard players operation $ingame_tip tick.global = $random temp2