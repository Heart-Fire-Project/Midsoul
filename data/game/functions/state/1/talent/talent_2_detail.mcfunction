# 灵魂方
tellraw @a[team=alive,scores={talent_2=1}] {"translate":"ms.talent.001desc","fallback":" 收集到灵魂碎片后, 速度小幅度提升, 收集速度略微提升"}
tellraw @a[team=alive,scores={talent_2=2}] {"translate":"ms.talent.002desc","fallback":" 近距离内有灵魂守卫者时, 获得中幅加速"}
tellraw @a[team=alive,scores={talent_2=3}] {"translate":"ms.talent.003desc","fallback":" 有灵魂处于垂死状态时, 速度小幅度提升, 效果不叠加"}
tellraw @a[team=alive,scores={talent_2=4}] {"translate":"ms.talent.004desc","fallback":" 收集到灵魂碎片时, 自身回复微量生命"}

# 守卫者方
tellraw @a[team=protect,scores={talent_2=1}] {"translate":"ms.talent.101desc","fallback":" 灵魂玩家不再显示红色警戒条"}
tellraw @a[team=protect,scores={talent_2=2}] {"translate":"ms.talent.102desc","fallback":" 每当灵魂解除垂死状态时, 即刻高亮并小幅降低全体灵魂速度"}
tellraw @a[team=protect,scores={talent_2=3}] {"translate":"ms.talent.103desc","fallback":" 小幅度减少自身擦刀时间"}
tellraw @a[team=protect,scores={talent_2=4}] {"translate":"ms.talent.104desc","fallback":" 使灵魂方陷入黑暗, 在攻击前持续高亮较远灵魂, 在接近灵魂前持续隐身, 攻击时重新开始冷却"}