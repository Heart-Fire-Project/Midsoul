# 随机一个技能
function base:random {storage:"data",max:"5",min:"1"}
execute store result score @s skill run scoreboard players get $random data

# 随机第一个天赋
function base:random {storage:"data",max:"7",min:"1"}
execute store result score @s talent_1 run scoreboard players get $random data

# 随机第二个天赋
function base:random {storage:"data",max:"7",min:"1"}
execute store result score @s talent_2 run scoreboard players get $random data

# 重新做人
execute if score @s talent_1 = @s talent_2 run function main:state/1/ability/random