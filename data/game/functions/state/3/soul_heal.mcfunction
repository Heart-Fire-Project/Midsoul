schedule function game:state/3/soul_heal_fin 1t replace

scoreboard players set @s state 0
tellraw @a[team=!admin] [{"text": " » ","color": "gold","bold": true},{"selector":"@s","bold": false},{"translate":"ms.info.heal","fallback": " 成功脱离垂死状态!","bold": false}]
playsound block.conduit.activate player @a[team=!admin] 0 1000000 0 1000000
function game:state/3/give_effect
function game:state/3/refresh_inventory
effect give @s speed 20 4 true
effect give @s resistance 20 4 true
tag @s add just_healed
tp @s @r[tag=marker_gold]

tag @s[tag=healed_1,tag=healed_2] remove healed_1
tag @s[tag=healed_1,tag=!healed_2] add healed_2
tag @s[tag=!healed_1,tag=!healed_2] add healed_1