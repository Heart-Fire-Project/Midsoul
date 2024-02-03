# 告知
tellraw @a[team=soul] [{"text":" » ","color":"#9955FF","bold":true},{"translate":"ms.info.aura.4.a","fallback":"灵气满溢 ⚜ 碎片正自动聚拢，警惕已处于%s下的灵魂守卫者！","bold":false,"with":[{"translate":"ms.tooltip.emergency","fallback":"危机状态","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tooltip.emergency.detail","fallback":"移速提升至 160% 且伤害翻倍"}]}}]},"\n"]
tellraw @a[team=protect] [{"text":" » ","color":"#9955FF","bold":true},{"translate":"ms.info.aura.4.b","fallback":"灵气满溢 ⚜ 碎片正自动聚拢，你已进入%s，尽快斩杀灵魂！","bold":false,"with":[{"translate":"ms.tooltip.emergency","fallback":"危机状态","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tooltip.emergency.detail","fallback":"移速提升至 160% 且伤害翻倍"}]}}]},"\n"]
playsound minecraft:block.sculk_shrieker.shriek player @a[team=!admin] 0 1000000 0 1000000

# Bossbar 调整
bossbar set midsoul:warn players @a[team=!admin]
bossbar set midsoul:warn max 1200
bossbar set midsoul:warn style notched_12
bossbar set midsoul:info players
bossbar set midsoul:heed players

# 调整基础速度
execute as @a[team=protect] run attribute @s generic.movement_speed base set 0.16