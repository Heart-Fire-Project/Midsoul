# 重置游戏

# 游戏设定
setworldspawn 0 263 0
forceload remove all
time set midnight
weather clear
difficulty normal
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule keepInventory true
gamerule doWeatherCycle false
gamerule reducedDebugInfo true
gamerule doImmediateRespawn true
gamerule mobGriefing false
gamerule randomTickSpeed 0
gamerule fireDamage false
gamerule doTileDrops false
gamerule doMobLoot false
gamerule doTraderSpawning false
gamerule drowningDamage false
gamerule doLimitedCrafting true
gamerule announceAdvancements true
gamerule fallDamage false

# 记分板
scoreboard objectives remove temp
scoreboard objectives add temp dummy "临时数据"
scoreboard objectives remove skill
scoreboard objectives add skill dummy "携带技能"
scoreboard objectives remove talent_1
scoreboard objectives add talent_1 dummy "携带天赋 1"
scoreboard objectives remove talent_2
scoreboard objectives add talent_2 dummy "携带天赋 2"
scoreboard objectives remove skill_cd
scoreboard objectives add skill_cd dummy "技能冷却"
scoreboard objectives remove talent_1_cd
scoreboard objectives add talent_1_cd dummy "天赋 1 冷却"
scoreboard objectives remove talent_2_cd
scoreboard objectives add talent_2_cd dummy "天赋 2 冷却"
scoreboard objectives remove state
scoreboard objectives add state dummy "个人状态"
scoreboard objectives remove countdown
scoreboard objectives add countdown dummy "个人计时"
scoreboard objectives remove health
scoreboard objectives add health health "生命值"
scoreboard objectives modify health rendertype hearts
scoreboard objectives remove data
scoreboard objectives add data dummy "游戏数据"
scoreboard objectives remove leave_game
scoreboard objectives add leave_game minecraft.custom:leave_game "离开游戏"
scoreboard objectives remove player_id
scoreboard objectives add player_id dummy "玩家编号"

# 游玩队伍
team remove alive
team add alive "存活灵魂"
team modify alive color white
team modify alive collisionRule never
team modify alive deathMessageVisibility never
team modify alive seeFriendlyInvisibles false
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
team remove finish
team add finish "复活灵魂"
team modify finish color green
team modify finish collisionRule never
team modify finish deathMessageVisibility never
team modify finish seeFriendlyInvisibles false

# 物品队伍
team remove shard
team add shard "灵魂碎片"
team modify shard color blue
team remove lamp
team add lamp "灵魂之灯"
team modify lamp color gold
team remove portal
team add portal "传送门"
team modify portal color light_purple

# 全局队伍
team remove prepare
team add prepare "已准备"
team modify prepare color aqua
team modify prepare collisionRule never
team modify prepare deathMessageVisibility never
team modify prepare seeFriendlyInvisibles false
team remove unready
team add unready "旁观者"
team modify unready color dark_gray
team modify unready collisionRule never
team modify unready deathMessageVisibility never
team modify unready seeFriendlyInvisibles false
team remove admin
team add admin "管理员"
team modify admin color light_purple
team modify admin collisionRule never
team modify admin deathMessageVisibility never
team modify admin seeFriendlyInvisibles false

# 边界重置
worldborder center 0 0
worldborder set 10000000
worldborder warning distance 1000000

# 计时预备
schedule function game:tick/tick1 1t replace
schedule function game:tick/tick2 2t replace
schedule function game:tick/tick20 20t replace

# 其他项目初始化
function base:bossbar/init
function base:damage/init

# 进入大厅状态
function game:state/0/enter

# 重置默认设置
scoreboard players set $gamelock data 0
scoreboard players set $initcheck data 51121
scoreboard players set $shard_goal data 16

tellraw @a ["\n",{"selector":"@s"},{"text": " » ","color": "light_purple","bold": true}, {"translate":"ms.init","fallback": "游戏已被重置!","color": "light_purple"},"\n"]