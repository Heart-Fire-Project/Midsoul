# 灵魂方
$tellraw @a[team=soul,scores={talent_$(num)=1}] [" ",{"translate":"ms.talent.001.desc","fallback":"收集到灵魂碎片后，获得中幅%s，下一次收集开始时视为已经收集 0.3s； 收集中断不返还效果","with":[{"translate":"ms.tooltip.speed","fallback":"加速","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tootip.speed.2","fallback":"移动速度 +40%"}]}}]}]
$tellraw @a[team=soul,scores={talent_$(num)=2}] [" ",{"translate":"ms.talent.002.desc","fallback":"近距离内有灵魂守卫者时，获得中幅%s","with":[{"translate":"ms.tooltip.speed","fallback":"加速","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tootip.speed.3","fallback":"移动速度 +60%"}]}}]}]
$tellraw @a[team=soul,scores={talent_$(num)=3}] [" ",{"translate":"ms.talent.003.desc","fallback":"有灵魂处于垂死状态时，获得中幅%s","with":[{"translate":"ms.tooltip.speed","fallback":"加速","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tootip.speed.2","fallback":"移动速度 +40%"}]}}]}]
$tellraw @a[team=soul,scores={talent_$(num)=4}] [" ",{"translate":"ms.talent.004.desc","fallback":"收集到灵魂碎片时，自身回复微量生命"}]
$tellraw @a[team=soul,scores={talent_$(num)=5}] [" ",{"translate":"ms.talent.005.desc","fallback":"蹲下时不会被灵魂守卫者%s到","with":[{"translate":"ms.tooltip.heed","fallback":"气息感应","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tootip.heed.detail.a","fallback":"根据敌方单位的远近，在屏幕上方以 Bossbar 的形式显示\n从远至近分别为"},{"translate":"ms.tootip.heed.detail.b","fallback":"稳定","color":"aqua"},"/",{"translate":"ms.tootip.heed.detail.c","fallback":"异常","color":"yellow"},"/",{"translate":"ms.tootip.heed.detail.d","fallback":"紊乱","color":"red"},"，",{"translate":"ms.tootip.heed.detail.e","fallback":"其中只有灵魂方会显示紊乱"}]}}]}]
$tellraw @a[team=soul,scores={talent_$(num)=6}] [" ",{"translate":"ms.talent.006.desc","fallback":"收集到碎片时，延长所有处于%s的灵魂倒计时","with":[{"translate":"ms.tooltip.dying","fallback":"垂死状态","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tootip.dying.detail","fallback":"受到致命攻击后进入，在一定时间后死亡"}]}}]}]
$tellraw @a[team=soul,scores={talent_$(num)=7}] [" ",{"translate":"ms.talent.007.desc","fallback":"碎片收集速度提升，且会随%s的提升进一步提升","with":[{"translate":"ms.tooltip.aura","fallback":"灵气等级","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tooltip.aura.detail","fallback":"随碎片收集进度提升，逐渐提示剩余碎片的位置"}]}}]}]

# 守卫者方
$tellraw @a[team=protect,scores={talent_$(num)=1}] [" ",{"translate":"ms.talent.101.desc","fallback":"灵魂玩家%s中“紊乱”生效范围缩小","with":[{"translate":"ms.tooltip.heed","fallback":"气息感应","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tootip.heed.detail.a","fallback":"根据敌方单位的远近，在屏幕上方以 Bossbar 的形式显示\n从远至近分别为"},{"translate":"ms.tootip.heed.detail.b","fallback":"稳定","color":"aqua"},"/",{"translate":"ms.tootip.heed.detail.c","fallback":"异常","color":"yellow"},"/",{"translate":"ms.tootip.heed.detail.d","fallback":"紊乱","color":"red"},"，",{"translate":"ms.tootip.heed.detail.e","fallback":"其中只有灵魂方会显示紊乱"}]}}]}]
$tellraw @a[team=protect,scores={talent_$(num)=2}] [" ",{"translate":"ms.talent.102.desc","fallback":"每当灵魂解除垂死状态时，即刻高亮并给予全体灵魂小幅%s","with":[{"translate":"ms.tooltip.slowness","fallback":"减速","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tootip.slowness.1","fallback":"移动速度 -15%"}]}}]}]
$tellraw @a[team=protect,scores={talent_$(num)=3}] [" ",{"translate":"ms.talent.103.desc","fallback":"小幅度减少自身擦刀时间"}]
$tellraw @a[team=protect,scores={talent_$(num)=4}] [" ",{"translate":"ms.talent.104.desc","fallback":"短暂黑暗后，距你较远的灵魂将会持续发光，且在靠近灵魂前你将会持续隐身 ；该天赋冷却将会在攻击到灵魂时重设为满"}]
$tellraw @a[team=protect,scores={talent_$(num)=5}] [" ",{"translate":"ms.talent.105.desc","fallback":"高亮距离你最远的灵魂"}]
$tellraw @a[team=protect,scores={talent_$(num)=6}] [" ",{"translate":"ms.talent.106.desc","fallback":"擦刀结束后使最近的一个灵魂发光"}]
$tellraw @a[team=protect,scores={talent_$(num)=7}] [" ",{"translate":"ms.talent.107.desc","fallback":"污染场上的一个碎片（至多存在 3 个），灵魂收集该碎片时会释放一个烟花"}]