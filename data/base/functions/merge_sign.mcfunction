#> base:merge_sign
#  修改告示牌数据
#  @input x y z glow color trans_2 trans_3 fallb_2 fallb_3 command

$data merge block $(x) $(y) $(z) {front_text:{has_glowing_text:$(glow)b,color:$(color),messages:['{"text":"","clickEvent":{"action":"run_command","value":"$(command)"}}','{"translate":"$(trans_2)","fallback":"$(fallb_2)"}','{"translate":"$(trans_3)","fallback":"$(fallb_3)"}','{"text":""}']},is_waxed:1b}