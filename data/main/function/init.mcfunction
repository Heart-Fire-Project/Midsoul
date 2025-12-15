tellraw @a [{text:"» ",bold:true,color:"#7367F0"},{translate:"ms.info.init",fallback:"%s 正在执行初始化流程",bold:false,with:[{selector:"@s"}]}]

# 规则设定
setworldspawn 0 0 0
forceload remove all
time set midnight
weather clear
difficulty normal
gamerule playersSleepingPercentage 101
gamerule randomTickSpeed 0
gamerule spawnRadius 0
gamerule allowEnteringNetherUsingPortals false
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule doVinesSpread false
gamerule doWeatherCycle false
gamerule drowningDamage false
gamerule fallDamage false
gamerule fireDamage false
gamerule freezeDamage false
gamerule keepInventory true
gamerule locatorBar false
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule projectilesCanBreakBlocks false
gamerule pvp true
gamerule reducedDebugInfo true
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule spawnerBlocksEnabled false
gamerule tntExplodes false

# 计分板
scoreboard objectives remove data
scoreboard objectives add data dummy "全局数据"
scoreboard objectives remove temp
scoreboard objectives add temp dummy "临时数据"
scoreboard objectives remove temp2
scoreboard objectives add temp2 dummy "临时数据"
scoreboard objectives remove exp.max
scoreboard objectives add exp.max dummy "经验上限"
scoreboard objectives remove exp.temp
scoreboard objectives add exp.temp dummy "待计经验"
scoreboard objectives remove skill
scoreboard objectives add skill dummy "携带技能"
scoreboard objectives remove talent_1
scoreboard objectives add talent_1 dummy "携带天赋 1"
scoreboard objectives remove talent_2
scoreboard objectives add talent_2 dummy "携带天赋 2"
scoreboard objectives remove item
scoreboard objectives add item dummy "携带宝物"
scoreboard objectives remove state
scoreboard objectives add state dummy "个人状态"
scoreboard objectives remove health
scoreboard objectives add health health "生命值"
scoreboard objectives remove setting
scoreboard objectives add setting dummy "游戏设定"
scoreboard objectives remove entity_id
scoreboard objectives add entity_id dummy "实体识别码"
scoreboard objectives remove music
scoreboard objectives add music dummy "背景音乐"

scoreboard objectives remove tick.general
scoreboard objectives add tick.general dummy "全局计时"
scoreboard objectives remove tick.skill
scoreboard objectives add tick.skill dummy "技能计时"
scoreboard objectives remove tick.talent_1
scoreboard objectives add tick.talent_1 dummy "天赋 1 计时"
scoreboard objectives remove tick.talent_2
scoreboard objectives add tick.talent_2 dummy "天赋 2 计时"
scoreboard objectives remove tick.item
scoreboard objectives add tick.item dummy "宝物计时"
scoreboard objectives remove tick.using
scoreboard objectives add tick.using dummy "使用物品计时"
scoreboard objectives remove tick.enhance
scoreboard objectives add tick.enhance dummy "伤害加成计时"
scoreboard objectives remove tick.invincible
scoreboard objectives add tick.invincible dummy "被动无敌计时"
scoreboard objectives remove tick.off_ground
scoreboard objectives add tick.off_ground dummy "滞空计时"
scoreboard objectives remove tick.parkour
scoreboard objectives add tick.parkour dummy "跑酷计时"
scoreboard objectives remove tick.music
scoreboard objectives add tick.music dummy "音乐计时"

scoreboard objectives remove detect.sneak
scoreboard objectives add detect.sneak custom:sneak_time "蹲下检测"
scoreboard objectives remove detect.sleep
scoreboard objectives add detect.sleep custom:sleep_in_bed "入睡检测"
scoreboard objectives remove detect.crossbow
scoreboard objectives add detect.crossbow used:crossbow "弩箭检测"
scoreboard objectives remove detect.drop
scoreboard objectives add detect.drop custom:drop "丢弃检测"
scoreboard objectives remove detect.using
scoreboard objectives add detect.using dummy "使用检测"
scoreboard objectives remove detect.interact
scoreboard objectives add detect.interact trigger "交互检测"

scoreboard objectives add leave_game custom:leave_game "离开游戏"
scoreboard objectives add soul_combo dummy "灵魂连击"

scoreboard objectives add stat.collect dummy "总计碎片收集"
scoreboard objectives add stat.heal dummy "总计队友救助"
scoreboard objectives add stat.open dummy "总计宝盒开启"
scoreboard objectives add stat.dying dummy "总计陷入垂死"
scoreboard objectives add stat.hit dummy "总计目标命中"
scoreboard objectives add stat.down dummy "总计玩家击倒"
scoreboard objectives add stat.skill dummy "总计技能使用"
scoreboard objectives add stat.talent dummy "总计天赋使用"
scoreboard objectives add stat.item dummy "总计宝物使用"
scoreboard objectives add stat.time dummy "总计游玩时间"
scoreboard objectives add stat.kill dummy "有效击杀"
scoreboard objectives add stat.death dummy "消亡次数"
scoreboard objectives add stat.revive dummy "复活次数"
scoreboard objectives add stat.win dummy "获胜次数"
scoreboard objectives add stat.win_soul dummy "获胜次数 - 灵魂"
scoreboard objectives add stat.win_guar dummy "获胜次数 - 守卫"
scoreboard objectives add stat.draw dummy "平局次数"
scoreboard objectives add stat.lose dummy "落败次数"
scoreboard objectives add stat.play dummy "游玩次数"
scoreboard objectives add stat.play_soul dummy "游玩次数 - 灵魂"
scoreboard objectives add stat.play_guar dummy "游玩次数 - 守卫"
scoreboard objectives add stat.mvp dummy "全场最佳次数"
scoreboard objectives add stat.level dummy "玩家等级"
scoreboard objectives add stat.exp dummy "玩家经验"
scoreboard objectives add stat.adv dummy "达成进度数"
scoreboard objectives add stat.adv_pt dummy "进度点"
scoreboard objectives add stat.rating dummy "短期分"
scoreboard objectives add stat.single_record dummy "最高表现分"
scoreboard objectives add stat.rating_record dummy "最高短期分"
scoreboard objectives add stat.parkour_5 dummy "普通跑酷纪录"
scoreboard objectives add stat.parkour_7 dummy "隐藏跑酷纪录"

scoreboard objectives add setting.instant_rating dummy "即时表现分设定"
scoreboard objectives add setting.interact_hint dummy "交互提示设定"
scoreboard objectives add setting.ability_status dummy "能力状态提示设定"
scoreboard objectives add setting.ingame_tip dummy "Tip! 设定"
scoreboard objectives add setting.echo_info dummy "回响提示设定"

scoreboard objectives add extra.particle dummy "粒子效果"
scoreboard objectives add extra.headset dummy "饰品装配"
scoreboard objectives add extra.text dummy "文本套组"
scoreboard objectives add extra.weapon dummy "武器样式"

# 队伍
team remove soul
team add soul "灵魂"
team modify soul color aqua
team modify soul collisionRule never
team modify soul deathMessageVisibility never
team modify soul seeFriendlyInvisibles true
team modify soul friendlyFire false
team modify soul nametagVisibility hideForOtherTeams
team remove guardian
team add guardian "灵魂守卫者"
team modify guardian color red
team modify guardian collisionRule never
team modify guardian deathMessageVisibility never
team modify guardian seeFriendlyInvisibles true
team modify guardian friendlyFire false
team modify guardian nametagVisibility hideForOtherTeams
team remove dead
team add dead "消亡"
team modify dead color dark_gray
team modify dead collisionRule never
team modify dead deathMessageVisibility never
team modify dead seeFriendlyInvisibles false
team remove revive
team add revive "复活"
team modify revive color green
team modify revive collisionRule never
team modify revive deathMessageVisibility never
team modify revive seeFriendlyInvisibles false

team remove prepare
team add prepare "已准备"
team modify prepare color white
team modify prepare collisionRule never
team modify prepare deathMessageVisibility never
team modify prepare seeFriendlyInvisibles false
team remove spectator
team add spectator "旁观者"
team modify spectator color gray
team modify spectator collisionRule never
team modify spectator deathMessageVisibility never
team modify spectator seeFriendlyInvisibles false
team remove admin
team add admin "管理员"
team modify admin color light_purple
team modify admin collisionRule never
team modify admin deathMessageVisibility never
team modify admin seeFriendlyInvisibles false

team remove shard
team add shard "灵魂碎片"
team modify shard color blue
team remove light
team add light "灵魂之灯"
team modify light color gold
team remove portal
team add portal "传送门"
team modify portal color light_purple
team remove chest
team add chest "灵魂宝物盒"
team modify chest color gray

# 边界初始化
worldborder center 0 0
worldborder set 10000000
worldborder warning distance 1000000

# 全局计时
schedule function main:tick/tick1 1t replace
schedule function main:tick/tick2 2t replace
schedule function main:tick/tick20 20t replace

# Bossbar 初始化
bossbar remove midsoul:info
bossbar add midsoul:info "主信息显示"
bossbar remove midsoul:heed
bossbar add midsoul:heed "离死不远了"
bossbar set midsoul:heed color yellow
bossbar remove midsoul:warn
bossbar add midsoul:warn "马上就寄了"
bossbar set midsoul:warn color red
bossbar remove midsoul:1
bossbar add midsoul:1 "A"
bossbar remove midsoul:2
bossbar add midsoul:2 "B"
bossbar remove midsoul:3
bossbar add midsoul:3 "C"

# 进度侦测初始化
advancement revoke @a only main:detect/damage_dealt
advancement revoke @a only main:detect/damage_taken
advancement revoke @a only main:detect/using_item

# 重置默认设定
scoreboard players set $mode setting 1
scoreboard players set $map setting 0
scoreboard players set $ability_assign setting 0
scoreboard players set $echo_chance setting 30
scoreboard players set $mode_page setting 1
scoreboard players set $map_page setting 1
scoreboard players set $echo_page setting 1
scoreboard players set $index_page setting 1
scoreboard players set $cooldown_speed setting 100
scoreboard players set $interact_speed setting 100
scoreboard players set $role_assign setting 0
scoreboard players set $initcheck data 7419147
data merge storage ms:setting {show_mark:false,setting_lock:false,game_lock:false,balanced_speed:true,reset_speed:false,random_custom:false}
data merge storage ms:echo {01:true,02:true,03:true,04:true,05:true,06:true,07:true,08:true,09:true}

# 常数项
scoreboard players set #-1 data -1
scoreboard players set #2 data 2
scoreboard players set #3 data 3
scoreboard players set #4 data 4
scoreboard players set #5 data 5
scoreboard players set #6 data 6
scoreboard players set #7 data 7
scoreboard players set #8 data 8
scoreboard players set #9 data 9
scoreboard players set #10 data 10
scoreboard players set #15 data 15
scoreboard players set #16 data 16
scoreboard players set #20 data 20
scoreboard players set #24 data 24
scoreboard players set #30 data 30
scoreboard players set #50 data 50
scoreboard players set #60 data 60
scoreboard players set #65 data 65
scoreboard players set #61 data 61
scoreboard players set #64 data 64
scoreboard players set #75 data 75
scoreboard players set #100 data 100
scoreboard players set #182 data 182
scoreboard players set #256 data 256
scoreboard players set #800 data 800
scoreboard players set #10000 data 10000
scoreboard players set #18000 data 18000
scoreboard players set #80000 data 80000

# 版本数据
scoreboard players set $build data 260
scoreboard players set $map_max data 4
scoreboard players set $skill_max data 5
scoreboard players set $talent_max data 7
scoreboard players set $item_max data 7

# 进入大厅状态
function main:state/0/enter