# 灵魂方
tellraw @a[team=alive,scores={skill=1}] [" ",{"translate":"ms.skill.001.desc","fallback":"隐身且速度大幅提升, 但你受到的伤害同样大幅提升"}]
tellraw @a[team=alive,scores={skill=2}] [" ",{"translate":"ms.skill.002.desc","fallback":"持续发光且速度降低, 结束后使一个灵魂解除垂死状态, 若无陷入垂死状态的灵魂, 则灵魂守护者持续发光且速度大幅降低"}]
tellraw @a[team=alive,scores={skill=3}] [" ",{"translate":"ms.skill.003.desc","fallback":"即刻高亮灵魂守卫者, 灵魂守卫者距离你越近生效时间越长"}]
tellraw @a[team=alive,scores={skill=4}] [" ",{"translate":"ms.skill.004.desc","fallback":"随机开启一个灵魂宝物箱"}]

# 守卫者方
tellraw @a[team=protect,scores={skill=1}] [" ",{"translate":"ms.skill.101.desc","fallback":"即刻高亮全部灵魂, 其中距离你最近的灵魂效果时长翻倍"}]
tellraw @a[team=protect,scores={skill=2}] [" ",{"translate":"ms.skill.102.desc","fallback":"技能期间每有一个碎片被收集, 你都会在技能后获取一段高额伤害与移速加成"}]
tellraw @a[team=protect,scores={skill=3}] [" ",{"translate":"ms.skill.103.desc","fallback":"标记最近的灵魂, 在其移动时将会有轨迹出现"}]
tellraw @a[team=protect,scores={skill=4}] [" ",{"translate":"ms.skill.104.desc","fallback":"为一个随机的灵魂宝物箱增加诅咒效果"}]