# 通用开场
scoreboard players set $aura_rank data 0
scoreboard players set $rated_play data 1
scoreboard players set $stat_gametime tick.general 0
scoreboard players set $echo tick.general -1
scoreboard players set $echo_info tick.general 10
scoreboard players set $noguar tick.general 200
scoreboard players set @a state 0
scoreboard players set @a item 0
scoreboard players reset @a tick.enhance
scoreboard players set @a tick.enhance 0
scoreboard players reset @a tick.disable
scoreboard players set @a tick.disable 0
scoreboard players reset @a tick.disable_max
scoreboard players reset @a tick.silent
scoreboard players set @a tick.silent 0
scoreboard players reset @a tick.silent_max
scoreboard players reset @a tick.invincible
scoreboard players set @a tick.invincible 0
scoreboard players reset @a detect.die
scoreboard players set @a[team=soul] detect.die 0
scoreboard players reset @a detect.kill
scoreboard players reset @a detect.sleep
scoreboard players reset @a detect.drop
scoreboard players reset @a tick.general
scoreboard players reset @a tick.off_ground

scoreboard players reset * temp.collect
scoreboard players reset * temp.heal
scoreboard players reset * temp.open
scoreboard players reset * temp.dying
scoreboard players reset * temp.hit
scoreboard players reset * temp.stun
scoreboard players reset * temp.skill
scoreboard players reset * temp.talent
scoreboard players reset * temp.item
scoreboard players reset * temp.time

scoreboard players reset * temp.track
scoreboard players reset * temp.tie
scoreboard players reset * temp.charge
scoreboard players reset * temp.rated_collect

tag @a[team=soul] add no_hit
tag @a remove status_display
tag @a remove echo_target
tag @a remove charge_rating_1
tag @a remove charge_rating_2
tag @a remove charge_rating_3

execute if score $echo data matches 1 run function main:lib/echo/init {min:"0",max:"0"}
execute if score $echo data matches 4 run function main:lib/echo/init {min:"20",max:"60"}
execute if score $echo data matches 7 run function main:lib/echo/init {min:"30",max:"120"}
execute if score $echo data matches 10 run function main:lib/echo/init {min:"0",max:"0"}