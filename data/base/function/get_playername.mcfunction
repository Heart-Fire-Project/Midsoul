# 通过令玩家获取自己的头颅后，解析头颅数据获取玩家用户名
# 需要参数：x y z (允许暂存头颅的常加载物品展示框坐标)
# 前置条件：loot_table/get_playername
# 输出结果：r7s:base{playername}

$loot replace entity @n[type=item_frame,x=$(x),y=$(y),z=$(z),distance=..3] contents loot base:get_playername
$data modify storage r7s:base playername set string entity @n[type=item_frame,x=$(x),y=$(y),z=$(z),distance=..3] Item.components."minecraft:profile".name