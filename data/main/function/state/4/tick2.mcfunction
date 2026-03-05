# 通用
function main:lib/event/universal/tick2

# 第二状态处理
scoreboard players remove @a[scores={state=1,tick.general=1..}] tick.general 200
execute at @a[team=soul,scores={state=1,tick.general=0..}] run particle snowflake ~ ~0.5 ~ 0.2 0.1 0.2 0.03 5 force @a
execute at @a[team=guardian,scores={state=1,tick.general=0..}] run particle block{block_state:"redstone_block"} ~ ~0.2 ~ 0.2 0.1 0.2 1 5 force @a
execute as @a[team=soul,scores={state=1,tick.general=..0}] at @s run function main:state/3/player/soul/dead
execute as @a[team=guardian,scores={state=1,tick.general=..0}] at @s run function main:state/3/player/guardian/recover