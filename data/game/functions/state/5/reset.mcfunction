# 未完成按照失败计算
execute as @a[team=alive] run function game:state/3/soul_died

# 重置计分板
scoreboard players reset $soul_rank temp
scoreboard players reset @a countdown
scoreboard players reset @a sneak_time
scoreboard players set @a state 0
scoreboard players set $shard_collected temp 0
scoreboard players set $shard_goal temp 0

# 清除标签
tag @a remove just_healed
tag @a remove heal_damage
tag @a remove skill_001_active
tag @a remove skill_002_active
tag @a remove skill_102_active
tag @a remove skill_102_double
tag @a remove skill_103_active
tag @a remove talent_001_active
tag @a remove talent_004_active
tag @a remove talent_104_active

# 添加游玩记录
tag @a[team=protect] add protect_tr
tag @a[team=dead] add soul_tr
tag @a[team=finish] add soul_tr

# 进入结算画面
function game:state/5/end_process