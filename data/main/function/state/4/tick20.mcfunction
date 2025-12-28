# 通用
function main:lib/event/universal/tick20

# 第二状态处理
execute at @a[scores={state=1,tick.general=0..},team=soul] run playsound block.beacon.ambient player @a[scores={state=1,tick.general=0..},team=soul]

# 实时表现分
function base:caculate/time {unit:"min",tick:"$stat_gametime",source:"tick.general"}
execute if score $min temp2 matches 1..10 if score $sec temp2 matches 0 as @a[team=soul,scores={setting.instant_rating=1}] run function main:lib/rating/1/survive