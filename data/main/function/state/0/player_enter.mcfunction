# 数据重置
function main:lib/action/reset_attribute

# 刷新状态
effect clear @s
effect give @s saturation infinite 0 true
effect give @s instant_health 1 10 true
effect give @s resistance infinite 4 true
effect give @s weakness infinite 4 true

# 杂项
scoreboard players set @s tick.general 0
scoreboard players set @s state 0
scoreboard players enable @s detect.interact
gamemode adventure @s
team join spectator @s
execute unless entity @s[x=-12,y=-1,z=-12,dx=16,dy=16,dz=16] unless entity @s[x=-1011,y=-2,z=-1015,dx=32,dy=18,dz=45] run tp @s[team=!admin] 0 0 0 135.0 -15.0
execute unless score @s exp.temp matches -2147483648..2147483647 run scoreboard players set @s exp.temp 0
execute unless score @s music matches -1 run function main:state/0/music_roll

# 先计算一次经验上限，然后执行经验结算
scoreboard players operation @s temp = @s[scores={stat.level=..127}] stat.level
scoreboard players set @s[scores={stat.level=..127}] temp2 0
function main:state/0/exp/maximum
function main:state/0/exp/loop

# 占位符，以免误调设定
item replace entity @s inventory.11 from block 0 -7 0 container.11
item replace entity @s inventory.12 from block 0 -7 0 container.12
item replace entity @s inventory.13 from block 0 -7 0 container.13
item replace entity @s inventory.14 from block 0 -7 0 container.14
item replace entity @s inventory.15 from block 0 -7 0 container.15