# 修改告示牌数据
# 需要参数：x y z(告示牌坐标) glow(是否发光)[0/1] color(注意和文本套件中的颜色有所不同) ← 必填 | 选填 → trans_2 trans_3(第二三行分别的键名) fallb_2 fallb_3(第二三行分别的空显) command(点击运行指令)

$data merge block $(x) $(y) $(z) {front_text:{has_glowing_text:$(glow)b,color:$(color),messages:[{text:"",click_event:{action:"run_command",command:"$(command)"}},{translate:"$(trans_2)",fallback:"$(fallb_2)"},{translate:"$(trans_3)",fallback:"$(fallb_3)"},{text:""}]}}