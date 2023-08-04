# 灵魂方
tellraw @a[team=alive,scores={skill=1}] {"translate":"ms.skill.001desc","fallback":" 隐身且速度大幅提升, 但你受到的伤害同样大幅提升"}
tellraw @a[team=alive,scores={skill=2}] {"translate":"ms.skill.002desc","fallback":" 持续发光且速度大幅降低, 结束后使一个灵魂解除垂死状态, 若无陷入垂死状态的灵魂, 则灵魂守护者持续发光且速度小幅降低"}

# 守卫者方
tellraw @a[team=protect,scores={skill=1}] {"translate":"ms.skill.101desc","fallback":" 即刻高亮全部灵魂, 其中距离你最近的灵魂效果时长翻倍"}
tellraw @a[team=protect,scores={skill=2}] {"translate":"ms.skill.102desc","fallback":" 技能期间每有一个碎片被收集, 你都会在技能后获取一小段高额伤害与移速加成"}