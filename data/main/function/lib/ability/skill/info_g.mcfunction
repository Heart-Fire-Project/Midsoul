tellraw @s ""

tellraw @s[scores={skill=1}] [{translate:"ms.skill",fallback:"[技能] ",color:"red"},{translate:"ms.skill.101",fallback:"虔诚力场"}]
tellraw @s[scores={skill=2}] [{translate:"ms.skill",fallback:"[技能] ",color:"red"},{translate:"ms.skill.102",fallback:"灵力掌控"}]
tellraw @s[scores={skill=3}] [{translate:"ms.skill",fallback:"[技能] ",color:"red"},{translate:"ms.skill.103",fallback:"唤灵留迹"}]
tellraw @s[scores={skill=4}] [{translate:"ms.skill",fallback:"[技能] ",color:"red"},{translate:"ms.skill.104",fallback:"恶灵诅咒"}]
tellraw @s[scores={skill=5}] [{translate:"ms.skill",fallback:"[技能] ",color:"red"},{translate:"ms.skill.105",fallback:"雾影阴霾"}]

tellraw @s[scores={skill=1}] [{text:"⚡ 70  ⌚ 7 > ",color:"red"},{translate:"ms.tag.detect",fallback:"感知"}]
tellraw @s[scores={skill=2}] [{text:"⚡ 60  ⌚ 12 > ",color:"red"},{translate:"ms.tag.detect",fallback:"感知"},"/",{translate:"ms.tag.kill",fallback:"杀戮"}]
tellraw @s[scores={skill=3}] [{text:"⚡ 70  ⌚ 20 > ",color:"red"},{translate:"ms.tag.detect",fallback:"感知"}]
tellraw @s[scores={skill=4}] [{text:"⚡ 60  ⌚ 10 > ",color:"red"},{translate:"ms.tag.kill",fallback:"杀戮"},"/",{translate:"ms.tag.debuff",fallback:"妨害"}]
tellraw @s[scores={skill=5}] [{text:"⚡ 70  ⌚ 12 > ",color:"red"},{translate:"ms.tag.kill",fallback:"杀戮"},"/",{translate:"ms.tag.strategy",fallback:"策略"}]

tellraw @s[scores={skill=1}] [{translate:"ms.skill.101.desc",fallback:"移速 +40%%；即刻使全部灵魂发光，其中距离你最近的灵魂效果时长翻倍"}]
tellraw @s[scores={skill=2}] [{translate:"ms.skill.102.desc",fallback:"获得伤害加成且造成的伤害 +6；标记最近的灵魂令其沉默 6 秒并持续发射粒子追踪其位置"},"\n",{translate:"ms.skill.102.desc.sub",fallback:"追踪粒子仅你可见",color:"gray"}]
tellraw @s[scores={skill=3}] [{translate:"ms.skill.103.desc",fallback:"移速 +20%%；标记最远的灵魂传送至其附近并令其发光 5 秒，技能期间内被标记的灵魂会持续留下尾迹"}]
tellraw @s[scores={skill=4}] [{translate:"ms.skill.104.desc",fallback:"为一个随机的灵魂宝物盒附加%s效果，若没有未被诅咒的灵魂宝物盒则生成 2 个；移速 +20%%，场上每有一个被诅咒的灵魂宝物盒额外 +20%%，上限 +140%%",with:[{translate:"ms.tooltip.curse",fallback:"诅咒",underlined:true,"hover_event":{action:"show_text",value:[{translate:"ms.tooltip.curse",fallback:"诅咒",color:"red"},"\n",{translate:"ms.tooltip.curse.detail",fallback:"该效果可被施加给灵魂宝物盒。\n\n有灵魂经过时使其发光且移速 -15%%，开启后使其发光 3 秒，并在 7 秒内移速 -30%%；有守卫者经过时使最近的灵魂发光，开启后使全体灵魂发光 3 秒并在 15 秒内速度 +40%%",color:"white"}]}}]}]
tellraw @s[scores={skill=5}] [{translate:"ms.skill.105.desc",fallback:"立即释放一次剑气；技能期间内移速 +40%% 且无法攻击，但可以释放剑气；技能结束后的 12 秒内无法攻击"},"\n",{translate:"ms.skill.105.desc.sub",fallback:"选中武器并短按 [%s] 以释放剑气，对周围 4 格内所有灵魂造成 10 伤害\n技能期间内最多可以再释放 2 次剑气，次数用尽后技能立即结束",color:"gray",with:[{keybind:"key.drop"}]}]