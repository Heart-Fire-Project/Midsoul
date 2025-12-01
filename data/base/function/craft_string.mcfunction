# 合成字符串 [5] | 如果需要更多字符串串起来直接往后加就行
# 需要参数：A B C D E (待合成的文本)
# 输出结果：r7s:base{string}

$data modify storage r7s:base string set value "$(A)$(B)$(C)$(D)$(E)"