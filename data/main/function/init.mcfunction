tellraw @a [{"selector":"@s"},{"text":" » ","bold":true,"color":"#7367F0"},{"translate":"ms.info.init","fallback":"执行初始化流程","color":"#7367F0"}]

# 规则设定
setworldspawn 0 0 0
forceload remove all
time set midnight
weather clear
difficulty normal
gamerule playersNetherPortalCreativeDelay 1010000
gamerule playersNetherPortalDefaultDelay 1010000
gamerule playersSleepingPercentage 101
gamerule spawnRadius 0
gamerule randomTickSpeed 0
gamerule announceAdvancements true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doImmediateRespawn true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule drowningDamage false
gamerule doTileDrops false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule fireDamage false
gamerule freezeDamage false
gamerule keepInventory true
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule projectilesCanBreakBlocks false
gamerule reducedDebugInfo true
gamerule sendCommandFeedback false
gamerule showDeathMessages false

# 计分板
scoreboard objectives remove temp
scoreboard objectives add temp dummy "临时数据"
scoreboard objectives remove temp2
scoreboard objectives add temp2 dummy "临时数据"
scoreboard objectives remove exp_max
scoreboard objectives add exp_max dummy "经验上限"
scoreboard objectives remove exp_temp
scoreboard objectives add exp_temp dummy "经验结算"
scoreboard objectives remove item
scoreboard objectives add item dummy "携带宝物"
scoreboard objectives remove skill
scoreboard objectives add skill dummy "携带技能"
scoreboard objectives remove talent_1
scoreboard objectives add talent_1 dummy "携带天赋 1"
scoreboard objectives remove talent_2
scoreboard objectives add talent_2 dummy "携带天赋 2"
scoreboard objectives remove item_tick
scoreboard objectives add item_tick dummy "宝物计时"
scoreboard objectives remove skill_tick
scoreboard objectives add skill_tick dummy "技能计时"
scoreboard objectives remove talent_1_tick
scoreboard objectives add talent_1_tick dummy "天赋 1 计时"
scoreboard objectives remove talent_2_tick
scoreboard objectives add talent_2_tick dummy "天赋 2 计时"
scoreboard objectives remove damage_tick
scoreboard objectives add damage_tick dummy "伤害加成计时"
scoreboard objectives remove state
scoreboard objectives add state dummy "个人状态"
scoreboard objectives remove countdown
scoreboard objectives add countdown dummy "全局计时"
scoreboard objectives remove health
scoreboard objectives add health health "生命检测"
scoreboard objectives remove data
scoreboard objectives add data dummy "全局数据"
scoreboard objectives remove player_id
scoreboard objectives add player_id dummy "玩家编号"
scoreboard objectives remove sneak_time
scoreboard objectives add sneak_time minecraft.custom:sneak_time "蹲下时间"
scoreboard objectives remove sleep_detect
scoreboard objectives add sleep_detect minecraft.custom:sleep_in_bed "睡眠检测"
scoreboard objectives remove interact_check
scoreboard objectives add interact_check trigger "交互检测"

scoreboard objectives remove temp_collect
scoreboard objectives add temp_collect dummy "单局碎片搜集"
scoreboard objectives remove temp_heal
scoreboard objectives add temp_heal dummy "单局队友救助"
scoreboard objectives remove temp_open
scoreboard objectives add temp_open dummy "单局宝盒开启"
scoreboard objectives remove temp_dying
scoreboard objectives add temp_dying dummy "单局陷入垂死"
scoreboard objectives remove temp_hit
scoreboard objectives add temp_hit dummy "单局玩家命中"
scoreboard objectives remove temp_down
scoreboard objectives add temp_down dummy "单局垂死攻击"
scoreboard objectives remove temp_skill
scoreboard objectives add temp_skill dummy "单局技能使用"
scoreboard objectives remove temp_talent
scoreboard objectives add temp_talent dummy "单局天赋使用"
scoreboard objectives remove temp_item
scoreboard objectives add temp_item dummy "单局宝物使用"
scoreboard objectives remove temp_kill
scoreboard objectives add temp_kill dummy "单局有效击杀"
scoreboard objectives remove temp_time
scoreboard objectives add temp_time dummy "单局游玩时间"
scoreboard objectives remove temp_track
scoreboard objectives add temp_track dummy "单局追踪时间"

scoreboard objectives add stat_collect dummy "总碎片搜集"
scoreboard objectives add stat_heal dummy "总队友救助"
scoreboard objectives add stat_open dummy "总宝盒开启"
scoreboard objectives add stat_dying dummy "总陷入垂死"
scoreboard objectives add stat_hit dummy "总玩家命中"
scoreboard objectives add stat_down dummy "总垂死攻击"
scoreboard objectives add stat_skill dummy "总技能使用"
scoreboard objectives add stat_talent dummy "总天赋使用"
scoreboard objectives add stat_item dummy "总宝物使用"
scoreboard objectives add stat_kill dummy "总有效击杀"
scoreboard objectives add stat_time dummy "总游玩时间"
scoreboard objectives add stat_win dummy "总获胜次数"
scoreboard objectives add stat_draw dummy "总平局次数"
scoreboard objectives add stat_lose dummy "总落败次数"
scoreboard objectives add stat_play dummy "总游玩次数"
scoreboard objectives add stat_mvp dummy "全场最佳次数"
scoreboard objectives add stat_level dummy "玩家等级"
scoreboard objectives add stat_exp dummy "玩家经验"
scoreboard objectives add stat_adv dummy "达成进度数"
scoreboard objectives add stat_adv_pt dummy "进度点数"
scoreboard objectives add stat_gacha dummy "灵唤总次数"
scoreboard objectives add stat_gacha_rec dummy "灵唤保底记录"
scoreboard objectives add stat_gacha_ssr dummy "灵唤出货次数"
scoreboard objectives add stat_record dummy "最高表现分记录"

scoreboard objectives add bonus_particle dummy "粒子效果"
scoreboard objectives add bonus_headset dummy "饰品装配"
scoreboard objectives add bonus_text dummy "文本套组"
scoreboard objectives add bonus_ability dummy "额外能力"
scoreboard objectives add bonus_weapon dummy "武器皮肤"

scoreboard objectives add leave_game minecraft.custom:leave_game "离开游戏"
scoreboard objectives add soul_glaze dummy "灵唤璃"
scoreboard objectives add soul_combo dummy "灵魂连击"

# 队伍
team remove soul
team add soul "灵魂"
team modify soul color aqua
team modify soul collisionRule never
team modify soul deathMessageVisibility never
team modify soul seeFriendlyInvisibles false
team modify soul friendlyFire false
team modify soul nametagVisibility hideForOtherTeams
team remove guardian
team add guardian "灵魂守卫者"
team modify guardian color red
team modify guardian collisionRule never
team modify guardian deathMessageVisibility never
team modify guardian seeFriendlyInvisibles false
team modify guardian friendlyFire false
team modify guardian nametagVisibility hideForOtherTeams
team remove dead
team add dead "死亡"
team modify dead color gray
team modify dead collisionRule never
team modify dead deathMessageVisibility never
team modify dead seeFriendlyInvisibles false
team remove finish
team add finish "复活"
team modify finish color green
team modify finish collisionRule never
team modify finish deathMessageVisibility never
team modify finish seeFriendlyInvisibles false

team remove prepare
team add prepare "已准备"
team modify prepare color yellow
team modify prepare collisionRule never
team modify prepare deathMessageVisibility never
team modify prepare seeFriendlyInvisibles false
team remove spectator
team add spectator "旁观者"
team modify spectator color white
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
team remove lamp
team add lamp "灵魂之灯"
team modify lamp color gold
team remove portal
team add portal "传送门"
team modify portal color light_purple
team remove chest
team add chest "灵魂宝物箱"
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
bossbar remove midsoul:01
bossbar add midsoul:01 "A"
bossbar remove midsoul:02
bossbar add midsoul:02 "B"
bossbar remove midsoul:03
bossbar add midsoul:03 "C"
bossbar remove midsoul:04
bossbar add midsoul:04 "D"
bossbar remove midsoul:05
bossbar add midsoul:05 "E"
bossbar remove midsoul:06
bossbar add midsoul:06 "F"
bossbar remove midsoul:07
bossbar add midsoul:07 "G"
bossbar remove midsoul:08
bossbar add midsoul:08 "H"
bossbar remove midsoul:09
bossbar add midsoul:09 "I"
bossbar remove midsoul:10
bossbar add midsoul:10 "J"
bossbar remove midsoul:11
bossbar add midsoul:11 "K"
bossbar remove midsoul:12
bossbar add midsoul:12 "L"
bossbar remove midsoul:13
bossbar add midsoul:13 "M"
bossbar remove midsoul:14
bossbar add midsoul:14 "N"
bossbar remove midsoul:15
bossbar add midsoul:15 "O"
bossbar remove midsoul:16
bossbar add midsoul:16 "P"

# 伤害侦测初始化
advancement revoke @a only base:damage_dealt
advancement revoke @a only base:damage_taken

# 重置默认设置
scoreboard players set $settinglock data 0
scoreboard players set $gamelock data 0
scoreboard players set $gamemode data 1
scoreboard players set $gamemap data 0
scoreboard players set $ability_apply data 0
scoreboard players set $cooldown_speed data 10
scoreboard players set $collect_speed data 10
scoreboard players set $show_mark data 0
scoreboard players set $initcheck data 51121
scoreboard players set $echo_chance data 40

# 常数项
scoreboard players set #-1 data -1
scoreboard players set #2 data 2
scoreboard players set #3 data 3
scoreboard players set #4 data 4
scoreboard players set #5 data 5
scoreboard players set #6 data 6
scoreboard players set #10 data 10
scoreboard players set #16 data 16
scoreboard players set #20 data 20
scoreboard players set #24 data 24
scoreboard players set #40 data 40
scoreboard players set #50 data 50
scoreboard players set #60 data 60
scoreboard players set #61 data 61
scoreboard players set #64 data 64
scoreboard players set #100 data 100
scoreboard players set #182 data 182
scoreboard players set #200 data 200
scoreboard players set #256 data 256
scoreboard players set #10000 data 10000
scoreboard players set #25200 data 25200

# 进入大厅状态
function main:state/0/enter