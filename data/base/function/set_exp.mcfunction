# 将经验条用作进度条
# 需要参数：current(进度当前值) max(进度最大值) level(等级显示值)

# 设置经验
$scoreboard players operation $exp temp = @s $(current)
scoreboard players operation $exp temp *= #182 data
$scoreboard players operation $exp temp /= @s $(max)
xp set @s 38 levels
execute if score $exp temp matches 0..60 run xp set @s 0 points
execute if score $exp temp matches 61..121 run xp set @s 61 points
execute if score $exp temp matches 122.. run xp set @s 122 points
scoreboard players operation $exp temp %= #61 data
execute if score $exp temp matches 16..31 run xp add @s 16 points
execute if score $exp temp matches 32..47 run xp add @s 32 points
execute if score $exp temp matches 48.. run xp add @s 48 points
scoreboard players operation $exp temp %= #16 data
execute if score $exp temp matches 4..7 run xp add @s 4 points
execute if score $exp temp matches 8..11 run xp add @s 8 points
execute if score $exp temp matches 12.. run xp add @s 12 points
scoreboard players operation $exp temp %= #4 data
execute if score $exp temp matches 1 run xp add @s 1 points
execute if score $exp temp matches 2 run xp add @s 2 points
execute if score $exp temp matches 3 run xp add @s 3 points

# 设置等级
$scoreboard players operation $exp temp = @s $(level)
scoreboard players operation $exp temp %= #256 data
execute if score $exp temp matches 0..63 run xp set @s 0 levels
execute if score $exp temp matches 64..127 run xp set @s 64 levels
execute if score $exp temp matches 128..191 run xp set @s 128 levels
execute if score $exp temp matches 192.. run xp set @s 192 levels
scoreboard players operation $exp temp %= #64 data
execute if score $exp temp matches 16..31 run xp add @s 16 levels
execute if score $exp temp matches 32..47 run xp add @s 32 levels
execute if score $exp temp matches 48.. run xp add @s 48 levels
scoreboard players operation $exp temp %= #16 data
execute if score $exp temp matches 4..7 run xp add @s 4 levels
execute if score $exp temp matches 8..11 run xp add @s 8 levels
execute if score $exp temp matches 12.. run xp add @s 12 levels
scoreboard players operation $exp temp %= #4 data
execute if score $exp temp matches 1 run xp add @s 1 levels
execute if score $exp temp matches 2 run xp add @s 2 levels
execute if score $exp temp matches 3 run xp add @s 3 levels

stopsound @a * entity.player.levelup