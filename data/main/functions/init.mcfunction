tellraw @a ["\n",{"text":" » ","color":"#7367F0","bold":true},{"translate":"ms.info.init","fallback":"%s 重置了游戏","with":[{"selector":"@s"}],"color":"#7367F0"},"\n"]

# 游戏设定
setworldspawn 0 70 0
forceload remove all
time set midnight
weather clear
difficulty normal
gamerule randomTickSpeed 0
gamerule announceAdvancements true
gamerule keepInventory true
gamerule reducedDebugInfo true
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule doTileDrops false
gamerule doMobLoot false
gamerule doTraderSpawning false
gamerule naturalRegeneration false
gamerule mobGriefing false
gamerule showDeathMessages false
gamerule sendCommandFeedback false
gamerule fireDamage false
gamerule drowningDamage false
gamerule fallDamage false
gamerule freezeDamage false

# 记分板
scoreboard objectives remove temp
scoreboard objectives add temp dummy "临时数据"
scoreboard objectives remove cacu
scoreboard objectives add cacu dummy "计算储存"
scoreboard objectives remove exp_max
scoreboard objectives add exp_max dummy "经验上限"
scoreboard objectives remove exp_temp
scoreboard objectives add exp_temp dummy "经验结算"
scoreboard objectives remove item
scoreboard objectives add item dummy "携带道具"
scoreboard objectives remove skill
scoreboard objectives add skill dummy "携带技能"
scoreboard objectives remove talent_1
scoreboard objectives add talent_1 dummy "携带天赋 1"
scoreboard objectives remove talent_2
scoreboard objectives add talent_2 dummy "携带天赋 2"
scoreboard objectives remove item_tick
scoreboard objectives add item_tick dummy "道具计时"
scoreboard objectives remove skill_tick
scoreboard objectives add skill_tick dummy "技能计时"
scoreboard objectives remove talent_1_tick
scoreboard objectives add talent_1_tick dummy "天赋 1 计时"
scoreboard objectives remove talent_2_tick
scoreboard objectives add talent_2_tick dummy "天赋 2 计时"
scoreboard objectives remove double_damage
scoreboard objectives add double_damage dummy "双倍伤害计时"
scoreboard objectives remove state
scoreboard objectives add state dummy "个人状态"
scoreboard objectives remove countdown
scoreboard objectives add countdown dummy "个人计时"
scoreboard objectives remove health
scoreboard objectives add health health "生命值"
scoreboard objectives remove data
scoreboard objectives add data dummy "游戏数据"
scoreboard objectives remove sneak_time
scoreboard objectives add sneak_time minecraft.custom:sneak_time "蹲下时间"
scoreboard objectives remove sleep_detect
scoreboard objectives add sleep_detect minecraft.custom:sleep_in_bed "睡眠检测"
scoreboard objectives remove interact_check
scoreboard objectives add interact_check trigger "交互检测"
scoreboard objectives remove player_id
scoreboard objectives add player_id dummy "玩家编号"

scoreboard objectives remove stat_temp_collect
scoreboard objectives add stat_temp_collect dummy "单局碎片搜集"
scoreboard objectives remove stat_temp_heal
scoreboard objectives add stat_temp_heal dummy "单局队友救助"
scoreboard objectives remove stat_temp_dying
scoreboard objectives add stat_temp_dying dummy "单局自身垂死"
scoreboard objectives remove stat_temp_open
scoreboard objectives add stat_temp_open dummy "单局宝物开启"
scoreboard objectives remove stat_temp_hit
scoreboard objectives add stat_temp_hit dummy "单局玩家攻击"
scoreboard objectives remove stat_temp_down
scoreboard objectives add stat_temp_down dummy "单局玩家击倒"
scoreboard objectives remove stat_temp_skill
scoreboard objectives add stat_temp_skill dummy "单局技能使用"
scoreboard objectives remove stat_temp_talent
scoreboard objectives add stat_temp_talent dummy "单局天赋使用"
scoreboard objectives remove stat_temp_item
scoreboard objectives add stat_temp_item dummy "单局宝物使用"
scoreboard objectives remove stat_temp_play_time
scoreboard objectives add stat_temp_play_time dummy "单局游玩时间"
scoreboard objectives remove stat_temp_track_time
scoreboard objectives add stat_temp_track_time dummy "单局追踪时间"

scoreboard objectives add leave_game minecraft.custom:leave_game "离开游戏"
scoreboard objectives add decoration dummy "装饰品"
scoreboard objectives add stat_kill dummy "总击杀次数"
scoreboard objectives add stat_dead dummy "总死亡次数"
scoreboard objectives add stat_finish dummy "总复活次数"
scoreboard objectives add stat_total_collect dummy "总碎片搜集"
scoreboard objectives add stat_total_heal dummy "总队友救助"
scoreboard objectives add stat_total_dying dummy "总自身垂死"
scoreboard objectives add stat_total_open dummy "总宝物开启"
scoreboard objectives add stat_total_hit dummy "总玩家攻击"
scoreboard objectives add stat_total_down dummy "总玩家击倒"
scoreboard objectives add stat_total_skill dummy "总技能使用"
scoreboard objectives add stat_total_talent dummy "总天赋使用"
scoreboard objectives add stat_total_item dummy "总宝物使用"
scoreboard objectives add stat_play_time dummy "总对局时长"
scoreboard objectives add stat_win dummy "总获胜次数"
scoreboard objectives add stat_draw dummy "总平局次数"
scoreboard objectives add stat_lose dummy "总失败次数"
scoreboard objectives add stat_play dummy "总游玩次数"
scoreboard objectives add stat_mvp dummy "全场最佳次数"
scoreboard objectives add stat_level dummy "玩家等级"
scoreboard objectives add stat_exp dummy "玩家经验"
scoreboard objectives add stat_adv dummy "进度完成数"
scoreboard objectives add stat_adv_pts dummy "进度点数"

# 队伍
team remove soul
team add soul "存活灵魂"
team modify soul color white
team modify soul collisionRule never
team modify soul deathMessageVisibility never
team modify soul seeFriendlyInvisibles false
team modify soul friendlyFire false
team modify soul nametagVisibility hideForOtherTeams
team remove dead
team add dead "死亡灵魂"
team modify dead color gray
team modify dead collisionRule never
team modify dead deathMessageVisibility never
team modify dead seeFriendlyInvisibles false
team remove protect
team add protect "灵魂守卫者"
team modify protect color red
team modify protect collisionRule never
team modify protect deathMessageVisibility never
team modify protect seeFriendlyInvisibles false
team modify protect friendlyFire false
team modify protect nametagVisibility hideForOtherTeams
team remove finish
team add finish "复活灵魂"
team modify finish color green
team modify finish collisionRule never
team modify finish deathMessageVisibility never
team modify finish seeFriendlyInvisibles false

team remove prepare
team add prepare "已准备"
team modify prepare color aqua
team modify prepare collisionRule never
team modify prepare deathMessageVisibility never
team modify prepare seeFriendlyInvisibles false
team remove spectator
team add spectator "旁观者"
team modify spectator color dark_gray
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

# 准备计时
schedule function main:tick/tick1 1t replace
schedule function main:tick/tick2 2t replace
schedule function main:tick/tick20 20t replace

# Bossbar 初始化
bossbar remove midsoul:info
bossbar remove midsoul:heed
bossbar remove midsoul:warn
bossbar add midsoul:info "主信息显示"
bossbar add midsoul:heed "离死不远了"
bossbar add midsoul:warn "马上就寄了"
bossbar set midsoul:heed color yellow
bossbar set midsoul:warn color red

# 伤害侦测初始化
advancement revoke @a only base:damage_dealt
advancement revoke @a only base:damage_taken

# 重置默认设置
scoreboard players set $settinglock data 0
scoreboard players set $gamelock data 0
scoreboard players set $gamemode data 1
scoreboard players set $gamemap data 0
scoreboard players set $cooldown_speed data 10
scoreboard players set $collect_speed data 10
scoreboard players set $show_mark data 0
scoreboard players set $initcheck data 51121

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