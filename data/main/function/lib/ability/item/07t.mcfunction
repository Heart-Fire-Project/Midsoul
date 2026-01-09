# 显示进度条
scoreboard players set @s temp 200
function base:actionbar_timer {current:"tick.using",max:"temp",color:"#33FFAA"}

# 持续性特效
playsound block.candle.ambient player @a ~ ~ ~ 3
particle dust_color_transition{from_color:[0.6,0.2,0.7],to_color:[0.9,0.7,1.0],scale:1} ~ ~0.2 ~ 0.3 0.3 0.3 1 3 force @a

# 中断丢弃进程
scoreboard players set @s[scores={tick.item=..-1}] tick.item 0

# 完成判定
execute if score @s tick.using matches 200.. run function main:lib/ability/item/07f