playsound item.book.page_turn player @a[tag=game_player,scores={setting.ingame_tip=1}] 0 1000000 0 120000
execute store result score $random temp run random value 1..2
execute if score $random temp matches 1 as @a[tag=game_player,scores={setting.ingame_tip=1}] run function main:lib/tip/both
execute if score $random temp matches 2 as @a[tag=game_player,team=soul,scores={setting.ingame_tip=1}] run function main:lib/tip/soul
execute if score $random temp matches 2 as @a[tag=game_player,team=guardian,scores={setting.ingame_tip=1}] run function main:lib/tip/guar

# 每 4~7 分钟触发一次提示
execute store result score $ingame_tip tick.general run random value 240..420