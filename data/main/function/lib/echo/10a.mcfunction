# 无法攻击并获得隐身
effect give @s invisibility 4 0 true
scoreboard players set @s[scores={tick.disable=..81}] tick.disable 81
scoreboard players set @s tick.disable_max 1

# 留下发光残影，顺带播放心跳声
function base:get_playername {x:"0",y:"-7",z:"0"}
function main:lib/echo/10s with storage r7s:base
playsound entity.warden.nearby_close player @a ~ ~ ~ 3