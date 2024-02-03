scoreboard players add @a[tag=hit_soul,team=protect,scores={state=1,countdown=60..},limit=1] stat_temp_down 1
tag @a remove hit_soul
function main:state/3/attack/dying