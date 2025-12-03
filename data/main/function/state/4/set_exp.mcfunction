# 设置等级数 | 技能 / 第二状态
scoreboard players operation $tick temp = @s[scores={state=0}] tick.skill
scoreboard players operation $tick temp = @s[scores={state=1}] tick.general
execute if entity @s[tag=skill_on,scores={state=0}] run scoreboard players operation $tick temp *= #-1 data
scoreboard players operation $tick temp /= #100 data
scoreboard players add $tick temp 19
function base:caculate/time {unit:"sec",tick:"$tick",source:"temp"}
scoreboard players operation @s temp2 = $sec temp2
scoreboard players set @s[scores={temp2=..0}] temp2 0

# 设置经验进度条 | 收集 / 第二状态
scoreboard players set @s[tag=blue_interact] temp 7000
scoreboard players set @s[tag=E02] temp 7000
scoreboard players set @s[tag=gold_interact] temp 14000
scoreboard players set @s[tag=gray_interact] temp 10000
scoreboard players set @s[tag=purple_interact] temp 80000
scoreboard players operation @s[tag=purple_interact] tick.general = @n[tag=purple] tick.general
scoreboard players set @s[scores={state=1,temp.dying=1},team=soul] temp 120000
scoreboard players set @s[scores={state=1,temp.dying=2},team=soul] temp 80000
scoreboard players set @s[scores={state=1,temp.dying=3..},team=soul] temp 40000
scoreboard players set @s[scores={state=1},team=guardian] temp 14000

function base:set_exp {current:"tick.general",max:"temp",level:"temp2"}

tag @s remove blue_interact
tag @s remove gold_interact
tag @s remove gray_interact
tag @s remove E02
tag @s remove purple_interact