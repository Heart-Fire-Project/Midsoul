# 灵魂方
tellraw @a[team=alive,scores={talent_1=1}] {"translate":"ms.talent.001desc","fallback":" 收集到灵魂碎片后, 速度小幅度提升, 收集速度略微提升"}
tellraw @a[team=alive,scores={talent_1=2}] {"translate":"ms.talent.002desc","fallback":" 近距离内有灵魂守卫者时, 获得中幅加速"}
tellraw @a[team=alive,scores={talent_1=3}] {"translate":"ms.talent.003desc","fallback":" 有灵魂处于垂死状态时, 速度小幅度提升, 效果不叠加"}

# 守卫者方
tellraw @a[team=protect,scores={talent_1=1}] {"translate":"ms.talent.101desc","fallback":" 灵魂玩家不再显示红色警戒条"}
tellraw @a[team=protect,scores={talent_1=2}] {"translate":"ms.talent.102desc","fallback":" 有灵魂解除了垂死状态时, 即刻高亮并小幅降低全体灵魂速度"}
tellraw @a[team=protect,scores={talent_1=3}] {"translate":"ms.talent.103desc","fallback":" 小幅度减少自身擦刀时间"}