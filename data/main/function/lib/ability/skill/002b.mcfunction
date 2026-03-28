# 不点灯效果
effect give @p[team=guardian] glowing 5 0
execute at @p[team=guardian] run effect give @p[team=soul] speed 5 3

# 基于被加速目标是否是自己，播放 2 或 3 个音效；再附加粒子特效
execute at @p[team=guardian] run playsound block.vault.deactivate player @a ~ ~ ~ 1 0.5
execute at @p[team=guardian] at @p[team=soul] unless entity @s[distance=0] run playsound block.vault.activate player @a ~ ~ ~ 1 0.5
playsound block.vault.activate player @a ~ ~ ~ 1 0.5
particle trial_spawner_detection ~ ~0.1 ~ 0.2 0.2 0.2 0 32