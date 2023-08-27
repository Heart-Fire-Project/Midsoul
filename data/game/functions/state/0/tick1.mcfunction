# 在设置大厅完成后就不用 check_state 了
function game:state/0/check_state
execute as @a[team=!admin] run function game:state/0/refresh_inventory