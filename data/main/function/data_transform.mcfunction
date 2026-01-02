# 用于玩家更名后的数据转移
$scoreboard players operation $(to) stat.collect += $(from) stat.collect
$scoreboard players operation $(to) stat.heal += $(from) stat.heal
$scoreboard players operation $(to) stat.open += $(from) stat.open
$scoreboard players operation $(to) stat.dying += $(from) stat.dying
$scoreboard players operation $(to) stat.hit += $(from) stat.hit
$scoreboard players operation $(to) stat.stun += $(from) stat.stun
$scoreboard players operation $(to) stat.skill += $(from) stat.skill
$scoreboard players operation $(to) stat.talent += $(from) stat.talent
$scoreboard players operation $(to) stat.item += $(from) stat.item
$scoreboard players operation $(to) stat.kill += $(from) stat.kill
$scoreboard players operation $(to) stat.death += $(from) stat.death
$scoreboard players operation $(to) stat.revive += $(from) stat.revive
$scoreboard players operation $(to) stat.time += $(from) stat.time
$scoreboard players operation $(to) stat.win += $(from) stat.win
$scoreboard players operation $(to) stat.win_soul += $(from) stat.win_soul
$scoreboard players operation $(to) stat.win_guar += $(from) stat.win_guar
$scoreboard players operation $(to) stat.draw += $(from) stat.draw
$scoreboard players operation $(to) stat.lose += $(from) stat.lose
$scoreboard players operation $(to) stat.play += $(from) stat.play
$scoreboard players operation $(to) stat.play_soul += $(from) stat.play_soul
$scoreboard players operation $(to) stat.play_guar += $(from) stat.play_guar
$scoreboard players operation $(to) stat.mvp += $(from) stat.mvp
$scoreboard players operation $(to) stat.level += $(from) stat.level
$scoreboard players operation $(to) stat.exp += $(from) stat.exp
$scoreboard players operation $(to) stat.adv += $(from) stat.adv
$scoreboard players operation $(to) stat.adv_pt += $(from) stat.adv_pt
$scoreboard players operation $(to) stat.single_record > $(from) stat.single_record
$scoreboard players operation $(to) stat.rating_record > $(from) stat.rating_record
$execute unless score $(from) stat.parkour_5 matches ..-1 run scoreboard players operation $(to) stat.parkour_5 < $(from) stat.parkour_5
$execute unless score $(from) stat.parkour_7 matches ..-1 run scoreboard players operation $(to) stat.parkour_7 < $(from) stat.parkour_7

# 删号
$scoreboard players reset $(from)

# 输出
$tellraw @s [{text:"» ",bold:true,color:"#7367F0"},{translate:"ms.info.data_tran",fallback:"已将 %s 的游戏数据转移至 %s",with:[{text:"$(from)",color:"#BC78EC"},{text:"$(to)",color:"#BC78EC"}],bold:false}]