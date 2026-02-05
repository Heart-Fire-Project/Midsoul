# 重置数据
$scoreboard players reset $(target)
$advancement revoke $(target) everything
$scoreboard players set $(target) leave_game 1
$scoreboard players set $(target) exp.temp 0

# 设置个人设定
$scoreboard players set $(target) setting.instant_rating 1
$scoreboard players set $(target) setting.interact_hint 1
$scoreboard players set $(target) setting.ability_status 2
$scoreboard players set $(target) setting.ingame_tip 1
$scoreboard players set $(target) setting.echo_info 1

# 设置统计数据
$scoreboard players set $(target) stat.collect 0
$scoreboard players set $(target) stat.heal 0
$scoreboard players set $(target) stat.open 0
$scoreboard players set $(target) stat.dying 0
$scoreboard players set $(target) stat.hit 0
$scoreboard players set $(target) stat.stun 0
$scoreboard players set $(target) stat.skill 0
$scoreboard players set $(target) stat.talent 0
$scoreboard players set $(target) stat.relic 0
$scoreboard players set $(target) stat.kill 0
$scoreboard players set $(target) stat.death 0
$scoreboard players set $(target) stat.revive 0
$scoreboard players set $(target) stat.time 0
$scoreboard players set $(target) stat.win 0
$scoreboard players set $(target) stat.win_soul 0
$scoreboard players set $(target) stat.win_guar 0
$scoreboard players set $(target) stat.draw 0
$scoreboard players set $(target) stat.lose 0
$scoreboard players set $(target) stat.play 0
$scoreboard players set $(target) stat.play_soul 0
$scoreboard players set $(target) stat.play_guar 0
$scoreboard players set $(target) stat.mvp 0
$scoreboard players set $(target) stat.level 0
$scoreboard players set $(target) stat.exp 0
$scoreboard players set $(target) stat.adv 0
$scoreboard players set $(target) stat.adv_pt 0
$scoreboard players set $(target) stat.rating 0
$scoreboard players set $(target) stat.single_record 0
$scoreboard players set $(target) stat.rating_record 0
$scoreboard players set $(target) stat.parkour_5 -1
$scoreboard players set $(target) stat.parkour_7 -1

# 数值初始化
$attribute $(target) attack_damage base set 0