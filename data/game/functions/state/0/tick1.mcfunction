# 在设置大厅完成后就不用 check_state 了
function game:state/0/check_state
execute as @a[team=!admin] run function game:state/0/refresh_inventory

tp @a[x=-100,y=200,z=0,dx=200,dy=50,dz=200,team=!admin] -53.5 270 30.5 0 0